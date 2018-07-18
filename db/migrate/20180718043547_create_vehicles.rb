class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
