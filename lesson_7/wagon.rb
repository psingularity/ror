class Wagon
  include CompanyManufacturerName

  attr_reader :type, :number

  @@number = 1

  def initialize
    @number = @@number
    @@number += 1
  end

  protected

  attr_writer :number

end