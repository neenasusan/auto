class CreateMaintenances < ActiveRecord::Migration[5.2]
  def change
    create_table :maintenances do |t|
      t.string :maintenanceTask
      t.text :date
      t.references :vehicle, foreign_key: true

      t.timestamps
    end
  end
end
