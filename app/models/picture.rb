class Picture < ApplicationRecord

    has_one_attached :image
    belongs_to :user
    has_many :picture_comments, dependent: :destroy
    has_many :wanna_goes, dependent: :destroy
    belongs_to :prefecture
    belongs_to :season

  def wanna_gone_by?(user)
    wanna_goes.exists?(user_id: user.id)
  end

  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attached(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
  end

end
