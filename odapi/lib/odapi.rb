

require "httparty"
module Odapi
  class Error < StandardError; end
  # Your code goes here...
  include HTTParty
	base_uri "https://api.opendota.com/api/"

	def self.heroes
		get('/heroes')
	end

	def self.matches(id)
		get("/heroes/#{id}/matches")
	end
end

#Odapi.heroes
puts Odapi.matches(3)