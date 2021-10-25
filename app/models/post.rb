class Post < ApplicationRecord
	belongs_to :user

	extend ActiveHash::Associations::ActiveRecordExtensions
	belongs_to :Prefecture
	belongs_to :category
  has_one_attached :image
end
