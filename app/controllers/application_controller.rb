class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authorize
  before_filter :set_i18n_locale_from_params

  protected

  	def authorize
      respond_to do |format|        
        format.html do
          unless User.count.zero? or User.find_by_id(session[:user_id])
            redirect_to login_url, notice: "Please log in" 
          end
        end
        format.any do
          authenticate_or_request_with_http_basic do |username, password|
            user = User.find_by_name(username)
            user and user.authenticate(password)
          end
        end
      end
    end

    def set_i18n_locale_from_params
      
      if params[:locale]
        if I18n.available_locales.include?(params[:locale].to_sym)
          I18n.locale = params[:locale]
        else
          flash.now[:notice] = "#{params[:locale]} translation not available"
          logger.error flash.now[:notice]
        end
      end
    end

    def default_url_options
      {
        locale: I18n.locale
      }
    end

  private
  def current_cart
  	Cart.find(session[:cart_id])
  	rescue ActiveRecord::RecordNotFound
  		cart = Cart.create
  		session[:cart_id] = cart.id
  		cart
  end


end
