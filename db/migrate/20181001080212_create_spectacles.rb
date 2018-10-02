class CreateSpectacles < ActiveRecord::Migration[5.1]
  def change
    create_table (:spectacles) do |t|
        t.integer :cle_representation
        t.string :nom
        t.string :representation
        t.date :date_representation
        t.time :heure_representation
        t.date :date_fin
        t.time :heure_fin
        t.decimal :prix
        t.string :type
        t.string :filiere

        t.timestamps
    end

    add_index :spectacles, [:cle_representation]
  end
end
