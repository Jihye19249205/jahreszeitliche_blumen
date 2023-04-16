class AddColumnFlowerPlantsToPictures < ActiveRecord::Migration[6.1]
  def change
    add_column :pictures, :flower_plant, :string, null: false

  end
end
