class Route

  attr_reader :stations

  def initialize(start_station, end_station)
    @stations = [start_station, end_station]    
  end

  def add_station(station)
    @stations.insert(1,station)
    @stations[1..-2] = @stations[1..-2].reverse
  end

  def remove_station(station)    
    if station != start_station || station != end_station
      @stations.delete(station)
    else
      puts "Удалить станцию нельзя!"
    end
  end 

  def all_stations
    @stations.each { |station| puts station}
  end

  def start_station
    stations.first
  end

  def end_station
    stations.last
  end
end
