class PaymentType < ActiveRecord::Base
  attr_accessible :name
  belongs_to :order
end
