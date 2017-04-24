class RemoveDateFromCars < ActiveRecord::Migration[5.0]
  def change
    remove_column :cars, :date, :date
    remove_column :cars, :time, :time
  end
end
