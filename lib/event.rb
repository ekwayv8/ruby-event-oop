require "pry"
require 'time'

class Event


	#Définition des 4 variables d'instance 
	attr_accessor :start_date,:duration, :title, :attendees
	
	@@all_events = []


	def initialize(start_date_time,duration_int,title_str,attendees_array)

		@start_date = Time.parse(start_date_time)
		@duration = duration_int.to_i
		@title = title_str
		@attendees = attendees_array
		@@all_events << self	
	end

	
	#Methode qui permet de décaler de 24h (24*60min*60sec) un évenement initialement prévu à une date donnée par start_date_time
	def postpone_24h
		self.start_date + 24*60*60
	end

	#Methode qui calcul et retourne l'heure de fin d'un évènement: La duration étant en minute il faut la convertir en secondes 
	def end_date
		self.start_date + self.duration*60	
	end

	#Méthode permettant de déterminer si un évenement est passé ou non! 
	#La méthode étant avec un "?" pas besoin de faire une boucle! On peut juste mettre la condition que ruby considerera comme vraie
	def is_past?
		if self.start_date < Time.now
			return true
		else
			return false	
		end
	end

	#Méthode me permettant de savoir si l'évènement interviendra dans le futur
	def is_future?
			
		!is_past?
		#Autre Méthode en reprenant la boucle de is_past?
		#Autre méthode
		#if self.start_date > Time.now
		#	return true
		#else
		#	return false	
		#end
	end


	#Methode permettant de savoir si un évènement arrive bientôt (dans moins de 30 mins)
	def is_soon?

		if  self.start_date < Time.now + 30*60 && self.is_future?
			return true 
		else
			return false
		end
	end


	def self.all
		return @@all_events	
	end


end
binding.pry