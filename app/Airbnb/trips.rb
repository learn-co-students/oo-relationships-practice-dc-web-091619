# # #### Trip

# # - #listing
# #   - returns the listing object for the trip
# # - #guest
# #   - returns the guest object for the trip
# # - .all
# #   - returns an array of all trips

# class Trip

#     @@all = []

#     def initialize(guest, listing)
#         @guest = guest
#         @listing = listing
#         @@all << self
#     end

#     def listing
#         Listing.all.select do |listing| 
#             listing.trip == self 
#         end

#     end
#     def guest
#         Guests.
#     end

# end