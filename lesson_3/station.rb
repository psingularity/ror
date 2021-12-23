class Station

  attr_accessor :trains

  def initialize(title_station)
    @title_station = title_station
    @trains = []
  end

  def receiving_train(train)
    @trains << train
  end

  def types_trains      
    freight_trains = []
    passenger_trains = [] 
    @trains.select { |train|      
      if train.type == 'грузовой'
       freight_trains << train.number
      end
      if train.type == 'пассажирский'
        passenger_trains << train.number
      end 
    }
    puts "Номера грузовых поездов: #{freight_trains}"
    puts "Номера пассажирских поездов: #{passenger_trains}"
  end

  def departure_train(train)
    @trains.delete(train)
  end

end
