class CreatePrefectures < ActiveRecord::Migration[6.1]
  def change
    create_table :prefectures do |t|
      #カテゴリID
      t.references :category, foreign_key: true, null: false
      #都道府県(enum)
      t.string :prefecture, null: false

      t.timestamps
    end
  end
end
