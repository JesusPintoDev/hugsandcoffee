class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :fullname
      t.string :role
      t.string :bio
      t.decimal :coffee_price
      t.string :monetary_symbol

      t.timestamps
    end
  end
end
