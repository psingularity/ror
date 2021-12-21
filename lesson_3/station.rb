class Station

  def initialize(title_station)
    @title_station = title_station
    @trains = []
  end

  def receiving_train(train)
    @trains << train
  end

  def trains
    puts @trains
  end

  def types_trains
    sum_passenger_train = 50
    sum_freight_train = 42

    puts sum_passenger_train
    puts sum_freight_train
  end

  def departure_train(train)
    @trains.delete(train)
  end

end
