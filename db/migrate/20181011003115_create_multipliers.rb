class CreateMultipliers < ActiveRecord::Migration[5.2]
  def change
    create_table :multipliers do |t|
      t.references :profile, foreign_key: true
      t.string :a
      t.string :b
      t.string :c
      t.string :d

      t.timestamps
    end
  end
end
