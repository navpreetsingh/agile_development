class StoreController < ApplicationController
  def index
  	@products = Product.order(:title)
  	@cart = current_cart
  	session[:counter] = session[:counter].nil? ? 1 : session[:counter]+=1
  end
end
