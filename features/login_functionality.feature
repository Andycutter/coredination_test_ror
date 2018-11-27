Feature: User must register and login to view job details
    As a developer
    In order to have login functionality
    I would like to make use of Devise

    Scenario: User registration
        Given I visit the site
        And I click on 'Registration'
        Then I fill in 'Email' with 'random@test.com'
        And I fill in 'Password' with 'my-password'
        And I fill in 'Password confirmation' with 'my-password'
        And I click on 'Sign up'
        Then I should see 'Welcome! You have signed up successfully'
