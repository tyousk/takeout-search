class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :gender
  has_many :posts
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
