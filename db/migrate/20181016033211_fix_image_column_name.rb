class FixImageColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :images, :show?, :show
  end
end
