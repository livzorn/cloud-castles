class AddCoordinatesToCastle < ActiveRecord::Migration[6.0]
  def change
    add_column :castles, :latitude, :float
    add_column :castles, :longitude, :float
  end
end
