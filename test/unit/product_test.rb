require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "product attributes must not be empty" do
  	product = Product.new(title: "My Book Title",
  		desciption: "yyy",
  		image_url: "zzz.jpg")
  	product.price = -1
  	assert product.invalid?
  	assert_equal "must be greater than or equal to 0.01",
  		product.errors[:price].join('; ']
  	assert product.errors[:title].any?
  	assert product.errors[:desciption].any?
  	assert product.errors[:price].any?
  	assert product.errors[:image_url].any?
  end
end
