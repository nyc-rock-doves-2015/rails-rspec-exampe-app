require 'rails_helper'

RSpec.describe DogsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(assigns(:dogs)).to eq(Dog.all)
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "creates a dog" do
      expect {
      post :create, dog: FactoryGirl.attributes_for(:dog)
      }.to change{Dog.count}.by(1)
      expect(response).to redirect_to(dogs_path)
    end

    it "doesn't create a bad dog" do
      expect {
      post :create, dog: FactoryGirl.attributes_for(:dog, name:nil)
      }.to change{Dog.count}.by(0)
      expect(response).to render_template(:new)
    end

  end

end
