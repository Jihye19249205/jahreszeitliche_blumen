class CreateSeasons < ActiveRecord::Migration[6.1]
  def change
    create_table :seasons do |t|

      #カテゴリID（外部キー）
      t.references :category, foreign_key: false, null: false
      #季節(enum)
      t.integer :season, null: false, default: 1

      t.timestamps
    end
  end
end
