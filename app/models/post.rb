class Post < ApplicationRecord
	belongs_to :user

	extend ActiveHash::Associations::ActiveRecordExtensions
	belongs_to :Prefecture
	belongs_to :category
  has_one_attached :image

	validates :cooking_name, :impression, :price, :opening, :closing, :city, :address, presence: true
	validates :category_id, :prefecture_id, numericality: { other_than: 1 }

end
