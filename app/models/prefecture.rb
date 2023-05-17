class Prefecture < ApplicationRecord

  belongs_to :category, dependent: :destroy
  has_many :users
  has_many :pictures

end
