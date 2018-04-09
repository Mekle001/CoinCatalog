# User Role definition
class Role < ApplicationRecord
  has_and_belongs_to_many :privileges
  has_and_belongs_to_many :users
end
