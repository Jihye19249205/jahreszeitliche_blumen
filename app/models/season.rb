class Season < ApplicationRecord
  
  belongs_to :category
  has_many :pictures, dependent: :destroy
  
end