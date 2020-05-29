class CreatePostsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.belongs_to :user
      t.string :image_url
      t.string :title
      t.string :subtitle
      t.text :body
      t.integer :likes_count, :default => 0
      t.integer :dislikes_count, :default => 0
      t.integer :shares_count, :default => 0

      t.timestamps
    end
  end
end
