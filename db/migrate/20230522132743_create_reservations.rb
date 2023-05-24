class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :check_in
      t.string :check_out
      t.integer :number_of_people
      t.integer :stay_days
      t.integer :payment_fee
      t.integer :user_id
      t.integer :room_id

      t.timestamps
    end
  end
end
