# Flags class for
class Flag < ApplicationRecord
    has_and_belongs_to_many :editions
end
