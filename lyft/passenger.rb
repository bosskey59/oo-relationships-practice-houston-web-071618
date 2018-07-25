class Passenger
  @@all =[]
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def rides
    Ride.all.select do |ride|
      ride.passenger == self
    end
  end

  def total_distance
    (rides.map do |ride|
      ride.distance
    end).inject(0, &:+)
  end

  def self.premium_members
    @@all.select do |passenger|
      passenger.total_distance > 100
    end
  end

  def self.all
    @@all
  end

end
