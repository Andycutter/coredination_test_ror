Feature: User must register and login to view job details
    As a developer
    In order to have login functionality
    I would like to make use of Devise

    Background:
    Given the following user exist:
    |email          | password  |
    |test@random.dk | min-kode  |
    And I visit the site

    Scenario: Existing User logs in
        When I click on 'Login'
        And I fill in 'Email' with 'test@random.dk'
        And I fill in 'Password' with 'min-kode'
        And I click on 'Log in'
        Then I should see 'Signed in successfully.'

    Scenario: User tries to log in with wrong email
        When I click on 'Login'
        And I fill in 'Email' with 'wrongrandom.dk'
        And I fill in 'Password' with 'min-kode'
        And I click on 'Log in'
        Then I should see 'Invalid Email or password.'

    Scenario: User tries to log in with wrong password
        When I click on 'Login'
        And I fill in 'Email' with 'test@random.dk'
        And I fill in 'Password' with 'Min-kode'
        And I click on 'Log in'
        Then I should see 'Invalid Email or password.'