class CreateWannaGos < ActiveRecord::Migration[6.1]
  def change
    create_table :wanna_gos do |t|

      t.timestamps
    end
  end
end
