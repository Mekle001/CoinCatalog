class Edition < ApplicationRecord
#  delegate :url_helpers, to: 'Rails.application.routes'
#  def base_uri
#    url_helpers.edition_path(self)
#  end

  belongs_to :coin
  belongs_to :icon, foreign_key:"icon_id", :class_name => :graphic, :required => false
  belongs_to :mint, :required => false
  belongs_to :finish, :required => false
  belongs_to :material, :required => false
  belongs_to :user
  has_many :my_coins
end
