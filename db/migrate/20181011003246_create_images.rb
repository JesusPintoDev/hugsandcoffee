class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.references :profile, foreign_key: true
      t.string :url
      t.string :description
      t.boolean :show?

      t.timestamps
    end
  end
end
