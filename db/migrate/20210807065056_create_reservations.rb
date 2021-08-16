class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.date :start_date
      t.date :finish_date
      t.integer :number_of_people
      t.integer :room_id

      t.timestamps
    end
  end
end
