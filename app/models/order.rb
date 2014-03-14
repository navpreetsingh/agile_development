class Order < ActiveRecord::Base
  attr_accessible :address, :email, :name, :pay_type, :ship_date
  validates :name, :address, :email, presence: true  
  validates :pay_type, presence: true
  has_many :line_items, dependent: :destroy
  has_one :payment_type

  def add_line_items_from_cart(cart)
  	cart.line_items.each do |item|
  		item.cart_id = nil
  		line_items << item
  	end
  end

end
