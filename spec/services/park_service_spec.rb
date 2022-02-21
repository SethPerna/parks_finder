require 'rails_helper'
RSpec.describe ParkService do
  let(:park_service) { ParkService }

  describe '.search_parks' do
    it 'returns parks from a search', :vcr do
        get_parks = park_service.search_parks("VA")
        expect(get_parks).to be_a(Hash)
        expect(get_parks[:data]).to be_a(Array)
        expect(get_parks[:data][0]).to have_key(:fullName)
        expect(get_parks[:data][0]).to have_key(:description)
        expect(get_parks[:data][0]).to have_key(:directionsInfo)
      end
    end
  end
