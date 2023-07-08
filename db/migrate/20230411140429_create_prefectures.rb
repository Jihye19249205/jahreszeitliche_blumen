class CreatePrefectures < ActiveRecord::Migration[6.1]
  def change
    create_table :prefectures do |t|
      #カテゴリID
      t.references :category, null: false
      #都道府県
      t.string :prefecture

      t.timestamps
    end
  end
end
