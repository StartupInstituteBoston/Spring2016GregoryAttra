class ChangeDateFormatInReservations < ActiveRecord::Migration
  def up
    change_column :reservations, :datetime, :date
  end

  def down
    change_column :reservations, :datetime, :datetime
  end
end
