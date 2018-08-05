class Post < ApplicationRecord


  mount_uploader :image, PictureUploader

  validates :image, presence: true

end
