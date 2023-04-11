class CreatePictureComments < ActiveRecord::Migration[6.1]
  def change
    create_table :picture_comments do |t|

      t.timestamps
    end
  end
end
