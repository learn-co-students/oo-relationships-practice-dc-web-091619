require "pry"
require_relative "./listing.rb"
require_relative "./trip.rb"

class Guest
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end

    def self.all
        @@all 
    end

    def trips
        #returns an array of all trips a guest has made
        Trip.all.select do | trips |
            trips.guest == self
        end
    end

    def listings 
        guest_listings = []

        trips.map do | trip |
            guest_listings << trip.listing  #go through the filtered trips array and we add listing to new array 
        end

        guest_listings  #this makes sure we return the created array if not it will return the normal array becuase of map
    end

    def trip_count 
        trips.count 
    end

    def self.pro_traveller
        #returns an array of all guests who have made over 1 trip
        total_trips = {}

        Trip.all.map do |trips|
            total_trips[trips.guest] = trips.guest.trip_count
        end

        total_trips.max_by {|key, value| value} # this goes through the hash to get the biggest value
    end

    def self.find_all_by_name(guest_name)
        #takes an argument of a name (as a string), returns the all guests with that name
        
        Trip.all.select do | trips |
           trips.guest.name == guest_name
        end

    end


end
