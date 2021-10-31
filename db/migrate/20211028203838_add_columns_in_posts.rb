class AddColumnsInPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :prefecture_id, :integer
    add_column :posts, :city, :string
    add_column :posts, :building, :string
  end
end
