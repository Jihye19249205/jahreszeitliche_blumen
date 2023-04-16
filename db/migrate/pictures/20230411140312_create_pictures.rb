class CreatePictures < ActiveRecord::Migration[6.1]
  def change
    create_table :pictures do |t|
      #季節ID（外部キー）
      t.references :season, foreign_key: true, null: false
      #都道府県ID（外部キー）
      t.references :prefecture, foreign_key: true, null: false
      #撮影スポット名
      t.string :spot_name, null: false
      #キャプション
      t.text :caption, null: false
      #最寄駅
      t.string :station, null: false
      
      t.timestamps
    end
  end
end
