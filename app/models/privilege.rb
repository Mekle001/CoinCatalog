class Privilege < ApplicationRecord
    has_and_belongs_to_many :roles
    #has_many :users, :through => :roles
end
  