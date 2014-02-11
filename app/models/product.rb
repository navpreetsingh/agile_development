class Product < ActiveRecord::Base
  attr_accessible :desciption, :image_url, :price, :title
end
