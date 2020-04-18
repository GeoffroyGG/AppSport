class AddCoordinatesToLeague < ActiveRecord::Migration[6.0]
  def change
    add_column :leagues, :latitude, :float
    add_column :leagues, :longitude, :float
  end
end
