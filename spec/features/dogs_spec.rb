require "rails_helper"

RSpec.feature "Dog listing", :type => :feature do
  scenario "User visits the dog index page" do
    dog = FactoryGirl.create(:dog)
    visit "/dogs"
    selector = "[data-dog-id=\"#{dog.id}\"]"
    save_and_open_page
    expect(page).to have_selector(selector)
  end
end