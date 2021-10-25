class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string     :cooking_name,    null: false
      t.integer    :category_id,     null: false
      t.string     :impression,      null: false
      t.integer    :price,           null: false
      t.time       :opening,         null: false
      t.time       :closing,         null: false
      t.integer    :prefecture_id,   null: false
      t.string     :city,            null: false
      t.string     :address,         null: false
      t.string     :building
      t.timestamps
    end
  end
end
