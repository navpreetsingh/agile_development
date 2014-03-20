class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authorize

  protected

  	def authorize
      respond_to do |format|
        format.html do
          unless User.count.zero? or User.find_by(id: session[:user_id])
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


  private
  def current_cart
  	Cart.find(session[:cart_id])
  	rescue ActiveRecord::RecordNotFound
  		cart = Cart.create
  		session[:cart_id] = cart.id
  		cart
  end


end
