class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations, id: false do |t|

      t.timestamps
    end
  end
end
