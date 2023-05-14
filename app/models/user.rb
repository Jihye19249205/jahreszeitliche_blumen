class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    belongs_to :prefecture, optional: true

    has_many :pictures, dependent: :destroy
    has_many :picture_comments, dependent: :destroy
    has_many :wanna_goes, dependent: :destroy
    has_one_attached :profile_image

    # validates :prefecture_id, :last_name, :first_name, :last_name_kana, :first_name_kana, :phone_number, :nick_name, presense: true

    



end
