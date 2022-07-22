class CargoWagon < Wagon
  
  attr_reader :total_volume, :occupied_volume

  def initialize(total_volume)  
    @type = 'грузовой'
    @total_volume = total_volume  
    @occupied_volume = 0    
    super()
  end

  def take_volume
    self.occupied_volume += 1 if occupied_volume < total_volume
  end

  def free_volume
    total_volume - occupied_volume
  end

  protected

  attr_writer :total_volume, :occupied_volume
end
