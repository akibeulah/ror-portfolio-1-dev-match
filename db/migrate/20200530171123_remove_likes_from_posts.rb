class RemoveLikesFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :likes_count
    remove_column :posts, :dislikes_count
    remove_column :posts, :shares_count

    drop_table :user_login_counts
  end
end
