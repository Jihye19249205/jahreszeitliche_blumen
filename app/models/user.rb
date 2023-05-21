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

    # validates :prefecture_id, :last_name, :first_name, :last_name_kana, :first_name_kana, :phone_number, presense: true
    validates :nick_name, length: { minimum: 2, maximum: 10 }
    validates :introduction, length: { maximum: 50 }

    def self.guest
      find_or_create_by!(
      email: 'guest@example.com',
      prefecture_id: 2,
      last_name: 'サンプル',
      first_name: '太郎',
      last_name_kana: 'サンプル',
      first_name_kana: 'タロウ',
      nick_name: 'sTaro',
      phone_number: '03-1111-1111',
      is_deleted: false
      ) do |user|
        user.password = SecureRandom.urlsafe_base64
        # user.confirmed_at = Time.now
      end
    end



end
