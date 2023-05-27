class CreateWannaGoes < ActiveRecord::Migration[6.1]
  def change
    create_table :wanna_goes do |t|
      #ユーザID（外部キー）
      t.references :user, foreign_key: false, null: false
      #写真ID（外部キー）
      t.references :picture, foreign_key: false, null: false

      t.timestamps
    end
  end
end
