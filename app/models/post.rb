class Post < ApplicationRecord


  mount_uploader :image, PictureUploader
  # validates_integrity_of :image
  # validates_processing_of :image
  # validates_presence_of :image
end
