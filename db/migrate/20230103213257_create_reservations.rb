class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :debut
      t.date :fin
      t.references :user, null: false, foreign_key: true
      t.references :livre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
