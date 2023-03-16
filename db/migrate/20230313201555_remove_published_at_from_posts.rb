class RemovePublishedAtFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :published_at, :datetime
  end
end
