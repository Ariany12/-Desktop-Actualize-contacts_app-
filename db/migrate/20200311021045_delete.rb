class Delete < ActiveRecord::Migration[6.0]
  def change
    remove_column :contacts, :lat, :decimal, precision: 6, scale: 4
    remove_column :contacts, :long, :decimal, precision: 6, scale: 4
  end
end
