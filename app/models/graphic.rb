class Graphic < ApplicationRecord
  mount_uploader :image, ImageUploader
end
