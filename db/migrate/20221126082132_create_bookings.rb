class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :no_of_tickets
      t.float :amount_paid
      t.integer :stripe_tranaction_id
      t.references :customer, null: false, foreign_key: true
      t.references :workshop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
