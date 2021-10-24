class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :cooking_name,           null: false
      t.timestamps
    end
  end
end
