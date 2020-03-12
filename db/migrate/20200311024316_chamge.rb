class Chamge < ActiveRecord::Migration[6.0]
  def change
    change_column :contacts, :latitude, :decimal, precision: 8, scale: 6
    change_column :contacts, :longitude, :decimal, precision: 8, scale: 6
  end
end
