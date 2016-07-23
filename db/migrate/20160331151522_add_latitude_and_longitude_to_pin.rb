class AddLatitudeAndLongitudeToPin < ActiveRecord::Migration
  def change
    add_column :pins, :latitude, :float
    add_column :pins, :longtitude, :float
  end
end
