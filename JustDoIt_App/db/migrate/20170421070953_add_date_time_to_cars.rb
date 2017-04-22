class AddDateTimeToCars < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :date_time, :datetime
  end
end
