class ChangeDatatypeCheckInOfReservations < ActiveRecord::Migration[6.1]
  def change
    change_column :reservations, :check_in, :integer
  end
end
