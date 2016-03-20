class AddRestaurantRefToReservation < ActiveRecord::Migration
  def change
    add_reference :reservations, :restaurant, index: true, foreign_key: true
  end
end
