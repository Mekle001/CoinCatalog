class MyCoin < ApplicationRecord
  has_many :order_items
  belongs_to :edition
end
