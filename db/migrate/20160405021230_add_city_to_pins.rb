class AddCityToPins < ActiveRecord::Migration
  def change
    add_column :pins, :city, :string
  end
end
