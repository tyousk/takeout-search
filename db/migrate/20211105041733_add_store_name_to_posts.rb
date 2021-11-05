class AddStoreNameToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :store_name, :string
  end
end
