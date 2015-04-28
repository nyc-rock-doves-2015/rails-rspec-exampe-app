require 'rails_helper'

RSpec.describe Dog, type: :model do
  it "can say hello" do
    expect(Dog.count).to eq(0)
    dog = FactoryGirl.create(:dog, name: 'Rover')
    expect(dog.name).to eq("Rover")
    expect(Dog.count).to eq(1)


  end
end
