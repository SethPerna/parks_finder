require 'rails_helper'

RSpec.describe ParkFacade do
 it ".state_parks", :vcr do
   park = ParkFacade.state_parks("VA")

   expect(park).to be_a(Array)
   expect(park.first).to be_a(Park)
  end
end
