require 'spec_helper'

feature "city weather data" do
  let!(:city) { FactoryGirl.create(:city) }
  let!(:weather) { FactoryGirl.create(:weather) }
  scenario "User visits city page" do
    visit root_path
    click_link("Paris")
    expect(page).to have_css('.temp_table')
  end
end
