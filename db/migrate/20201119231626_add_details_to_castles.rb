class AddDetailsToCastles < ActiveRecord::Migration[6.0]
  def change
    add_column :castles, :sleeps, :integer
    add_column :castles, :bedrooms, :integer
    add_column :castles, :bathrooms, :integer
  end
end
