require "pry"
require 'time'

class Event


	#Définition des 4 variables d'instance 
	attr_accessor :start_date#, #:duration, :title, :attendees
	
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

	#Methode qui calcul et retourne l'heure de fun d'un évènement

	def self.all
		return @@all_events	
	end


end
binding.pry