class RemoveSeasonFromSeasons < ActiveRecord::Migration[6.1]
  def change
    remove_column :seasons, :season, :integer
  end
end
