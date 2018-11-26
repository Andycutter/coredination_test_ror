When("I visit the site") do
    visit root_path
end

Then("I should see {string}") do |content|
    expect(page).to have_content content
end

When("I click on {string}") do |link|
    click_on link
end