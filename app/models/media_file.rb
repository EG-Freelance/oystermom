class MediaFile < ActiveRecord::Base
  belongs_to :post
  
  has_attached_file :image
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif", "image/bmp"] }
  
  has_attached_file :video, styles: {
      medium: { format: 'mp4' },
      thumb: { geometry: '300x300#', format: 'jpg', time: 10 }
    }, processors: [:transcoder]
  validates :video, :attachment_content_type => { :content_type => /\Avideo\/.*\Z/ }
end