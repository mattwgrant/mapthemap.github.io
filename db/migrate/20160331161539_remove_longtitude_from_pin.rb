class RemoveLongtitudeFromPin < ActiveRecord::Migration
  def change
    remove_column :pins, :longtitude, :float
  end
end
