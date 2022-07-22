class PassengerWagon < Wagon

  attr_reader :total_number_seats, :occupied_seats

  def initialize(total_number_seats)    
    @type = "пассажирский"
    @total_number_seats = total_number_seats
    @occupied_seats = 0
    super()
  end

  def take_seat
    self.occupied_seats += 1 if occupied_seats < total_number_seats
  end

  def free_seats
    total_number_seats - occupied_seats
  end


  protected

  attr_writer :total_number_seats, :occupied_seats
  
end
