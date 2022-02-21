require 'rails_helper'
RSpec.describe 'parks index' do
  context 'as a user searching parks by state' do
    describe 'view', :vcr do
      it 'displays no parks before search' do
        visit parks_path

        expect(current_path).to eq(parks_path)
        expect(page).to_not have_content('National Parks in ')
        expect(page).to_not have_content('Park Name: ')
        expect(page).to_not have_content('Description: ')
        expect(page).to_not have_content('Directions: ')
        expect(page).to_not have_content('Hours of Operation: ')
      end

      it 'displays all parks for selected state' do
        visit root_path
        select 'Virginia', from: 'state'
        click_button 'Find Parks'

        expect(page).to have_content('National Parks in VA: 33')
        expect(page).to have_content('Park Name: ')
        expect(page).to have_content('Description: ')
        expect(page).to have_content('Directions Info: ')
        expect(page).to have_content('Hours of Operation:')
        expect(page).to have_content('Monday: ')
        expect(page).to have_content('Tuesday: ')
        expect(page).to have_content('Wednesday: ')
        expect(page).to have_content('Thursday: ')
        expect(page).to have_content('Friday: ')
        expect(page).to have_content('Saturday: ')
        expect(page).to have_content('Sunday: ')
      end
    end
  end
end
