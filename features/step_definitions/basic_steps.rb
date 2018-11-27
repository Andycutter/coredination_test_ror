When("I visit the site") do
    visit root_path
end

Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Given("I click on {string}") do |link|
    click_on link
end

Then("I fill in {string} with {string}") do |field, content|
    fill_in field, with: content
end

Given("the following user exist:") do |table|
    table.hashes.each do |user_hash|
        create(:user, user_hash)
    end
end