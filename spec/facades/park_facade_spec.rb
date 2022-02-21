require 'rails_helper'

RSpec.describe ParkFacade do
 it ".state_parks", :vcr do
   parks = ParkFacade.state_parks("VA")

   expect(parks).to be_a(Array)
   parks.each do |park|
      expect(park).to be_a Park
    end
  end
end
