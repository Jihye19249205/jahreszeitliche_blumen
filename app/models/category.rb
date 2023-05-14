class Category < ApplicationRecord

  has_many :prefectures, dependent: :destroy
  has_many :seasons, dependent: :destroy

end
