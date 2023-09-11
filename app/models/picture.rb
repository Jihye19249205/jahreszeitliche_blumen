class Picture < ApplicationRecord

    has_one_attached :image
    belongs_to :user
    belongs_to :prefecture
    belongs_to :season
    has_many :picture_comments, dependent: :destroy
    has_many :wanna_goes, dependent: :destroy
    # has_many :prefectures, through: :categories
    # has_many :seasons, through: :categories

    validates :prefecture, presence: true
    validates :season, presence: true

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

  # def self.search_for(content, method)
  #   if method == 'perfect'
  #       Picture.where(prefecture, season: content)
  #   end
  # end

  def search_picture
    self.search_word = params[:word]
    pictures = Picture.where("flower_plant LIKE ?", "%#{search_word}%")
    pictures = @pictures.where("season_id LIKE ?", "%#{params[:season_id]}%")
    pictures = @pictures.where("prefecture_id LIKE ?", "%#{params[:prefecture_id]}%")
    if pictures.size > 0
      flash[:notice] = "#{pictures.count}件の投稿が見つかりました"
    else
      flash[:notice] = "投稿が見つかりませんでした"
    end
    render 'index'
  end

end
