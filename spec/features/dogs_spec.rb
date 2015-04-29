require "rails_helper"

RSpec.feature "Dog listing", js: true, type: :feature do

  scenario "User visits the dog index page" do
    dog = FactoryGirl.create(:dog)
    visit "/dogs"
    selector = "[data-dog-id=\"#{dog.id}\"]"
    save_and_open_page
    expect(page).to have_selector(selector)
    expect(page).to have_content(dog.name)
  end

  scenario "User can click a dog name to see details" do
    dog = FactoryGirl.create(:dog)
    visit "/dogs"
    click_on(dog.name)
    expect(page).to have_content(dog.name)
    expect(page).to have_selector("[data-dog-id=\"#{dog.id}\"]")
  end
end
