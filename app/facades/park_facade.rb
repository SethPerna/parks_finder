class ParkFacade
  def self.state_parks(state)
    json = ParkService.search_parks(state)
    count = json[:total]
    json[:data].map { |park_data| Park.new(park_data, count) }
  end
end
