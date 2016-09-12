class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :text

      t.timestamps null: false
    end
    
    add_attachment :posts, :image
    add_attachment :posts, :video
  end
end
