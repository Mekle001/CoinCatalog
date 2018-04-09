# Core coin model
class Coin < ApplicationRecord
  has_many :editions
  belongs_to :mint, required: false
  belongs_to :artist, required: false
  belongs_to :icon,
             foreign_key: 'icon_id',
             class_name: 'Graphic',
             required: false
  belongs_to :unit_thickness,
             foreign_key: :unitthickness_id,
             class_name: 'Unit',
             required: false
  belongs_to :unit_size,
             foreign_key: :unitsize_id,
             class_name: 'Unit',
             required: false
  belongs_to :user, required: true
  has_and_belongs_to_many :attribs, class_name: 'Attributes', required: false
  validates :name, presence: true, length: { minimum: 5 }
end
