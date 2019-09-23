require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



mo = Driver.new("Mo")
charles = Driver.new("Charles")
joseph = Driver.new("Joseph")



khaled = Passenger.new("Khaled")
jon = Passenger.new("Jon")




ride1 = Ride.new(14.0, khaled, mo)
ride2 = Ride.new(12.0, khaled, joseph)
ride3 = Ride.new(25.0, jon, mo)
ride4 = Ride.new(76.0, khaled, mo)
ride5 = Ride.new(41.0, jon, charles)





binding.pry
0