class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :tool, foreign_key: true
      t.references :user, foreign_key: true
      t.date :rental_start
      t.date :rental_end

      t.timestamps
    end
  end
end
