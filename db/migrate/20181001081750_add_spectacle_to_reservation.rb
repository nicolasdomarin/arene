class AddSpectacleToReservation < ActiveRecord::Migration[5.1]
  def change
    add_reference :reservations, :reservation, foreign_key: true
  end
end
