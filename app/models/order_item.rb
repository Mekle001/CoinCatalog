class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :my_coin
end
