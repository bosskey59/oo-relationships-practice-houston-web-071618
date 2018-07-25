require_relative "./ride.rb"
require_relative "./passenger.rb"
require_relative "./driver.rb"
require "pry"

alex =Passenger.new ("alex")
bob =Passenger.new("bob")
mahandra = Driver.new("mahandra")
kyle = Driver.new("kyle")

alex_mahandra = Ride.new(alex, mahandra, 400)
alex_mahandra_2 = Ride.new(alex, mahandra, 200)
bob_kyle = Ride.new(bob, kyle, 150)
alex_kyle = Ride.new(alex, kyle, 30)



binding.pry

false
