class UpdatePostsModel < ActiveRecord::Migration
  def change
    add_column :posts, :name, :string
  end
end