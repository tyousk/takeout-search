class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :gender
  has_many :posts
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
  validates :nickname
  validates :birth_day

  with_options format: { with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]/ } do
    validates :password
  end

  with_options format: { with: /\A[ぁ-んァ-ン一-龥々]+\z/ } do
    validates :first_name
    validates :last_name
  end

  with_options format: { with: /\A[ァ-ヶー－]+\z/ } do
    validates :first_name_kana
    validates :last_name_kana
  end
  validates :gender_id, numericality: { other_than: 1 }
end

end
