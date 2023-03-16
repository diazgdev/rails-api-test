class RemoveFeaturedImageFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :featured_image, :string
  end
end
