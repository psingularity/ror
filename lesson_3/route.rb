class Route

  attr_reader :stations

  def initialize(start_station, end_station)
    @start_station = start_station
    @end_station = end_station

    @stations = [@start_station, @end_station]    
  end

  def add_station(station)
    @stations.insert(1,station)
    @stations[1..-2] = @stations[1..-2].reverse
  end

  def remove_station(station)    
    @stations.delete(station) if station != @stations[0] || @stations[-1]
  end 

  def all_stations
    @stations.each { |station| puts station}
  end

end
