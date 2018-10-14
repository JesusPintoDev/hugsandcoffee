class FixCoffeepriceColumnToProfile < ActiveRecord::Migration[5.2]
  def change
    change_column :profiles, :coffee_price, :decimal, precision: 10, scale: 2
  end
end