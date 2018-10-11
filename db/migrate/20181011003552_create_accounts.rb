class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.references :profile, foreign_key: true
      t.string :entity
      t.string :email
      t.integer :account_number
      t.string :rif_ci
      t.string :account_type

      t.timestamps
    end
  end
end
