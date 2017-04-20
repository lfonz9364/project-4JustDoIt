class CreateMaps < ActiveRecord::Migration[5.0]
  def change
    create_table :maps do |t|
      t.string :start_address
      t.string :destination_address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
