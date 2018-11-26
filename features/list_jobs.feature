Feature: List jobs on the landing page
    As a visitor
    When I visit the landing page of the web application
    I would like to see a list of all available jobs

    Scenario: View list of jobs on the landing page
        When I visit the site
        Then I should see 'Bob the builder Test 1'
        And I should see 'Maintenance of railways in Stockholm Län'
        And I should see 'Now job with in construction'

        