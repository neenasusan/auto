class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :licenceNum
      t.string :vehicleModel
      t.string :vehicleType
      t.string :modelYear
      t.string :odoReading

      t.timestamps
    end
  end
end
