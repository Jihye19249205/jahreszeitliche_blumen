class PictureComment < ApplicationRecord
  
  belongs_to :picture
  belongs_to :user
  
end
