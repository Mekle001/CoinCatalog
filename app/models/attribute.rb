class Attribute < ApplicationRecord
    has_and_belongs_to_many :coin
end
