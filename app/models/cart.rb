class Cart < ApplicationRecord
  belongs_to :user, required: false
  has_many :cart_products, :dependent => :destroy
  has_many :products, through: :cart_products

end
