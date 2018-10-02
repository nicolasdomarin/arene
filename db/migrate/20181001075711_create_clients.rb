class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :nom
      t.string :prenom
      t.string :email
      t.string :adresse
      t.integer :code_postal
      t.string :pays
      t.integer :age
      t.boolean :sexe

      t.timestamps
    end
  end
end
