class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :filename
      t.string :url

      t.timestamps null: false
    end
    
    drop_table :media_files
  end
end
