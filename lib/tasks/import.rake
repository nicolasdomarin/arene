  require 'csv'
  namespace :import do

    desc "Import Datas from CSV"
    task :fichier, [:doc] do
      file = File.join Rails.root."/csv/", "sample.csv"
      i = 0
      CSV.foreach(file) do |row|
        row.split(';')
        if row[i]  <= 3 
          reservation, date_reservation, heure_reservation = row
          Reservation.create(date_reservation: date_reservation, heure_reservation: heure_reservation)
        
        elsif row[i] > 3 && row[i] <= 14
          cle_representation, nom, date_representation, heure_representation, date_fin_representation, heure_fin_representation, prix, type, filiere = row
          Spectacle.create(cle_representation: cle_representation, date_representation: date_representation, heure_respresentation: heure_respresentation, date_fin_representation: date_fin_representation, heure_fin_representation: heure_fin_representation, prix: prix, type: type, filiere: filiere)

        else row[i] > 14
          nom, prenom, email, adresse, code_postal, pays, age, sexe = row
          Client.create(nom: nom, prenom: prenom, email: email, adresse: adresse, code_postal: code_postal, pays: pays, age: age, sexe: sexe)
        end
      end
    end
  end