Feature: User can get more details about a job
    As a User
    In order to know what the job is about
    I would like to get more a more detailed view

    Scenario: User click on Job title on landing page
        When I visit the site
        And I click on 'Bob the builder Test 1'
        Then I should see 'Bob the builder Test 1'
        And I should see 'Bob needs to build. Bob is specialised in masonry. Can we fix it? Yes we can!'
        And I should see 'Priotity: LOW'