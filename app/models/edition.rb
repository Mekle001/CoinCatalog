# Editions of Coins
class Edition < ApplicationRecord
  belongs_to :coin, required: true
  belongs_to :icon,
             foreign_key: 'icon_id',
             class_name: 'Graphic',
             required: false
  belongs_to :mint, required: false
  belongs_to :finish, required: false
  belongs_to :material, required: false
  belongs_to :user, required: true
  has_and_belongs_to_many :flags
  has_many :my_coins
end
