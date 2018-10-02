class Spectacle < ApplicationRecord
	has_many :reservation
	has_many :client, through: :reservation

	set_primary_key :cle_representation
end
