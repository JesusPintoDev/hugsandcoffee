class CreateTestimonials < ActiveRecord::Migration[5.2]
  def change
    create_table :testimonials do |t|
      t.references :profile, foreign_key: true
      t.string :fullname
      t.string :role
      t.string :message
      t.boolean :appreciation
      t.string :quantity

      t.timestamps
    end
  end
end
