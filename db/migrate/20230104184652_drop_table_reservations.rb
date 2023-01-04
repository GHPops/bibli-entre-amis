class DropTableReservations < ActiveRecord::Migration[7.0]
  def change
    drop_table :réservations
  end
end
