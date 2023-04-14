class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :pictures, dependent: :destroy
  has_many :picture_comments, dependent: :destroy
  has_many :wanna_goes, dependent: :destroy
  
end
