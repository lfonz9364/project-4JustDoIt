class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.references :user, foreign_key: true
      t.integer :seat_number
      t.text :meeting_point
      t.string :suburb
      t.boolean :smoker_friendly
      t.date :date
      t.strftime("%I:%M%p") :time
      t.text :description

      t.timestamps
    end
  end
end
