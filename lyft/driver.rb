class Driver
  @@all =[]
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def rides
    Ride.all.select do |ride|
      ride.driver == self
    end
  end

  def total_distance
    (rides.map do |ride|
      ride.distance
    end).inject(0, &:+)
  end

    # - .mileage_cap(distance)
    # - takes an argument of a distance (float) and returns all drivers who have exceeded that mileage
  def self.mileage_cap(distance)
    @@all.select do |driver|
      driver.total_distance > distance
    end
  end

  def self.all
    @@all
  end
end
