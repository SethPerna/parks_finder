class Park
  attr_reader :name, :description, :directions, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :park_count
  def initialize(data, count)
    @park_count = count
    @name = data[:fullName]
    @description = data[:description]
    @directions = data[:directionsInfo]
    @monday = data[:operatingHours][0][:standardHours][:monday]
    @tuesday = data[:operatingHours][0][:standardHours][:tuesday]
    @wednesday = data[:operatingHours][0][:standardHours][:wednesday]
    @thursday = data[:operatingHours][0][:standardHours][:thursday]
    @friday = data[:operatingHours][0][:standardHours][:friday]
    @saturday = data[:operatingHours][0][:standardHours][:saturday]
    @sunday = data[:operatingHours][0][:standardHours][:sunday]
  end
end
