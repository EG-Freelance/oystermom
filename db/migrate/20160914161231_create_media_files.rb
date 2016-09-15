class CreateMediaFiles < ActiveRecord::Migration
  def change
    create_table :media_files do |t|
      t.belongs_to :post
      
      t.timestamps
    end
    
    add_attachment :media_files, :image
    add_attachment :media_files, :video
    remove_attachment :posts, :image
    remove_attachment :posts, :video
  end
end
