class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :email
      t.datetime :datetime
      t.string :message
      t.string :restaurant_name

      t.timestamps null: false
    end
  end
end
