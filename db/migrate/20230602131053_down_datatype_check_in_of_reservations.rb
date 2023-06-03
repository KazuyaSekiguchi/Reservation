class DownDatatypeCheckInOfReservations < ActiveRecord::Migration[6.1]
  def change
    change_column :reservations, :check_in, :date
  end
end
