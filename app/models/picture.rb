class Picture < ApplicationRecord

  has_one_attached :image
  belongs_to :user
  has_many :picture_comments, dependent: :destroy
  has_many :wanna_goes, dependent: :destroy

  def wanna_gone_by?(user)
    wanna_goes.exists?(user_id: user.id)
  end

end
