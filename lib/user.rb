require "pry"


class User

	attr_accessor :email, :age


	#création de ma variable de classe stocker mes utilisateurs dans un array
	@@all_users = []

	#Méthode permettant d'initialiser la création des différents users
	def initialize(email_to_save,age_to_save)
		@email = email_to_save
		@age = age_to_save.to_i #Après penser à mettre une boucle pour bloquer l'utilisateur qui ne rentre pas le bon format
		@@all_users << self

	end

	#Methode de classe qui retourne le array all_users
	def self.all
		return @@all_users	
	end

end

binding.pry