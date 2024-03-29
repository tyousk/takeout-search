class Post < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :category
  has_one_attached :image

  validates :cooking_name, :impression, :price, :store_name, :opening, :closing, :city, :address, presence: true
  validates :category_id, :prefecture_id, numericality: { other_than: 1 }

  def self.search(search)
    if search != ''
      Post.where('cooking_name LIKE(?) OR prefecture_id.name Like(?)', "%#{search}%", "%#{search}%")
    else
      Post.all
    end
  end
end
