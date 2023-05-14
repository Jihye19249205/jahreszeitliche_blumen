class AddDetailsToSeasons < ActiveRecord::Migration[6.1]
  def change
    add_column :seasons, :season, :string
  end
end
