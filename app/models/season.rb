class Season < ApplicationRecord
  
  belongs_to :category, optional: true
  has_many :pictures, dependent: :destroy
  
end
