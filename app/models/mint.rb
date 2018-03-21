class Mint < ApplicationRecord
  has_many :coins
  has_many :editions
  has_many :vendors
end
