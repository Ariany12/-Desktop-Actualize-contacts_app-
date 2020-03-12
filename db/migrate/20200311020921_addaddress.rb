class Addaddress < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :lat, :decimal, precision: 6, scale: 4
    add_column :contacts, :long, :decimal, precision: 6, scale: 4
  end
end
