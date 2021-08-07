class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.text :room_introduction
      t.integer :price
      t.string :adress
      t.integer :user_id

      t.timestamps
    end
  end
end
