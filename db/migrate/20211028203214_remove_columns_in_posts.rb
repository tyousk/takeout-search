class RemoveColumnsInPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :latitude, :float
    remove_column :posts, :longitude, :float
  end
end
