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

    validates :nick_name, length: { minimum: 2, maximum: 20 }
    validates :introduction, length: { maximum: 50 }

    def self.guest
      find_or_create_by!(
      email: 'guest-user@example.com',
      prefecture_id: 2,
      nick_name: 'Guest',
      is_deleted: false
      ) do |user|
        user.password = SecureRandom.urlsafe_base64
        # user.confirmed_at = Time.now
      end
    end

  # def active_for_authentication?
  #   super && (is_deleted == false)
  # end

end
