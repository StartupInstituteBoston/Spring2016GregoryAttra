class ChangeDateFormatInReservationsAgain < ActiveRecord::Migration
  def up
    change_column :reservations, :datetime, :string
  end

  def down
    change_column :reservations, :datetime, :date
  end
end
