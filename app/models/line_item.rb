class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart
  belongs_to :order
  
  attr_accessible :cart_id, :product_id, :price

  def total_price
  	price * quantity
  end
  
end
