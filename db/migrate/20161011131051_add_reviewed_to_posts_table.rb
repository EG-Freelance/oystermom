class AddReviewedToPostsTable < ActiveRecord::Migration
  def change
    add_column :posts, :confirmed, :boolean
  end
end
