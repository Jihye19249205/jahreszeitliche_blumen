class CreatePictureComments < ActiveRecord::Migration[6.1]
  def change
    create_table :picture_comments do |t|
      #写真ID
      t.references :picture, foreign_key: false, null: false
      #ユーザID
      t.references :user, foreign_key: false, null: false
      #コメント
      t.text :comment
      
      t.timestamps
    end
  end
end
