class MediaFile < ActiveRecord::Base
  belongs_to :post
  
  has_attached_file :image
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif", "image/bmp"] }
  
  has_attached_file :video
end