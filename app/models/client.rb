class Client < ApplicationRecord
	has_many :reservation
	has_many :spectacle, through: :reservation

	def HasGender(sexe)
		if sexe = 1
			return 'M'
		elsif sexe = 0 
			return 'F'
		end
	end
end
