require 'spec_helper'

describe CitiesController do
  let!(:city1) { FactoryGirl.create(:city) }
  let!(:city2) { FactoryGirl.create(:city) }
  24.times { |n| let!("weather#{n}".to_sym) { FactoryGirl.create(:weather, city_id: city1.id) } }

  describe 'GET #index' do
    it "assigns all cities to @cities" do
      get :index
      assigns(:cities).should eq([city1, city2])
    end

    it "renders the :index view" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe 'GET #show' do
    it "renders the show page" do
      get :show, id: city1.id
      expect(response).to render_template(:show)
    end

    it "assigns the requested city to @city" do
      get :show, id: city1.id
      assigns(:city).should eq(city1)
    end
  end
end
