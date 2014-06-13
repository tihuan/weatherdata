require 'spec_helper'

feature "city weather data" do
  let!(:city) { FactoryGirl.create(:city) }
  let!(:weather) { FactoryGirl.create(:weather) }

  scenario "User visits city page" do
    visit root_path
    within("#city-list") do
      click_link("Paris")
    end
    save_and_open_page
    expect(page).to have_css('#weather-info')
  end
end
