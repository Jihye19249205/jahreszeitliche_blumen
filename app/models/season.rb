class Season < ApplicationRecord

  belongs_to :category, dependent: :destroy
  has_many :pictures, dependent: :destroy

end
