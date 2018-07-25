class Ride

  attr_reader :passenger, :driver, :distance
  @@all =[]

  def initialize(passenger, driver, distance)
    @passenger = passenger
    @driver = driver
    @distance = distance
    @@all<<self
  end

  # - .average_distance
  #   - should find the average distance of all rides
  def self.average_distance
    array_distances = @@all.map do |ride|
      ride.distance
    end
    array_distances.inject{ |sum, el| sum + el }.to_f / array_distances.size
  end

  def self.all
    @@all
  end
end
