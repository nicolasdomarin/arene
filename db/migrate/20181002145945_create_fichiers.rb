class CreateFichiers < ActiveRecord::Migration[5.1]
  def change
    create_table :fichiers do |t|

      t.timestamps
    end
  end
end
