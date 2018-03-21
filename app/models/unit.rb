class Unit < ApplicationRecord
  has_many :coinsize, class_name: "Coin", foreign_key: :unitsize_id
  has_many :cointhickness, class_name: "Coin", foreign_key: :unitthickness_id
end
