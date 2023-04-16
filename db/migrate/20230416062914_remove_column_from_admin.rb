class RemoveColumnFromAdmin < ActiveRecord::Migration[6.1]
  def change
    remove_column :admins, :name, :string
    remove_column :admins, :prefecture, :integer
    remove_column :admins, :phone_number, :string
    remove_column :admins, :is_deleted, :boolean
  end
end
