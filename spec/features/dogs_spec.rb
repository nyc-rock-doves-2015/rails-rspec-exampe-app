require "rails_helper"

RSpec.feature "Dog listing", :type => :feature do
  scenario "User creates the dog index page" do
    dog = FactoryGirl.create(:dog)
    visit "/dogs"
    selector = "#dog_#{dog.id}"
    save_and_open_page
    expect(page).to have_selector(selector)
  end
end