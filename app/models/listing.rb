require "pry"
require_relative "./guest.rb"
require_relative "./trip.rb"


class Listing 
    attr_accessor :name, :city

    @@all = []

    def initialize(name, city)
        @name = name
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        #returns an array of all trips at a listing
        Trip.all.select do |trips|
            trips.listing == self
        end
    end

    def trip_count
        #returns the number of trips that have been taken to that listing
        trips.count
    end

    def guests
        #returns an array of all guests who have stayed at a listing
        listing_guests = []

        trips.map do | trips |
           listing_guests << trips.guest 
        end

        listing_guests
    end

    def self.find_all_by_city(city)
        #takes an argument of a city name (as a string) and returns all the listings for that city

        Trip.all.select do | trips |
            trips.listing.city == city
        end
    end

    def self.most_popular
        #finds the listing that has had the most trips
        listing_popular = {}

        Trip.all.map do |trips|
            listing_popular[trips.listing] = 0  #creates hash with the listing and sets them at 0 to initialize
        end

        Trip.all.map do |trips|
           listing_popular.map do |key, value|
                if trips.listing == key
                    listing_popular[trips.listing] += 1 #adding 1 everytime the listing runs through
                end
           end
        end

        listing_popular.max_by {|key, value| value}   #going through the final hash and returning the max value
    end
end
