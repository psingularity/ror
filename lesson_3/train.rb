class Train

  attr_reader :type
  attr_reader :number

  attr_accessor :count   

  def initialize(number, type, count, speed = 0, index_current_station = 0)
    @number = number
    @type = type
    @count = count    
    @speed = speed
    @index_current_station = index_current_station
  end

  def change_speed
    @speed = gets.chomp
  end

  def speed
    puts "Скорость поезда: #{@speed}"
  end

  def brake
    @speed = 0
  end  

  def stations    
    $stations      
  end

  def current_station 
    @station = self.stations[@index_current_station]
  end

  def next_station
    @next_station = self.stations[@index_current_station+1]
  end

  def prev_station
    @prev_station = self.stations[@index_current_station-1]
  end

  def change_station
    puts "Переместиться на следующую станцию (next) / на предыдущую (prev)"
      
      input = gets.chomp
      if input == "next"  
        if @station != $end_station     
          @index_current_station += 1
          @station = self.stations[@index_current_station]          
        else 
          puts "Поезд на последней станции"
        end

      elsif input == "prev"
        if @station != $start_station
          @index_current_station -= 1
          @station = self.stations[@index_current_station]
        else
          puts "Поезд на первой станции"
        end
      else
        puts "Неверная команда"
      end        
    
  end

  def coupling_wagons
    if @speed == 0
      puts "Прицепить вагон (add) / отцепить (remove)"
      input = gets.chomp
      if input == "add"
        @count += 1
      elsif input == "remove"
        @count -= 1
      else
        puts "Неверная команда"
      end        
    else 
      puts "Поезд движется. Прицеплять/отцеплать вагоны запрещено"
    end
  end

end
