class CreatePassengers < ActiveRecord::Migration[5.0]
  def change
    create_table :passengers do |t|
      t.references :user, foreign_key: true
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
