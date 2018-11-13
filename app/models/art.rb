class Art < ApplicationRecord
  mount_uploader :image, ImageUploader
  #belongs_to :user
  has_and_belongs_to_many :tags
  belongs_to :cart
end
