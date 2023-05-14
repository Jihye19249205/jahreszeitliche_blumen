class Season < ApplicationRecord

  belongs_to :category, dependent: :destroy
  has_many :pictures, dependent: :destroy

  # self.data = [
  #   { id: 1, season: '--' },
  #   { id: 2, season: '春' },
  #   { id: 3, season: '夏' },
  #   { id: 4, season: '秋' },
  #   { id: 5, season: '冬' }
  #   ]

end
