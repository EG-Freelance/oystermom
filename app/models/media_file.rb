class MediaFile < ActiveRecord::Base
  belongs_to :post
  
  has_attached_file :image
  has_attached_file :video
end