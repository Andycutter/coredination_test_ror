# Arbetsprov, Coredination

## Framework

Ruby on Rails (RoR) was chosen as the framework because it allows me to make use of Test Driven Development (TDD). Besides TDD RoR is chosen because I'm familiar with it and it is easy to deploy using e.g. Heroku

HAML is used as the markup langauge because it offers flexible and cleaner way of writing HTML.

Devise handles the User-model and login functionality. It is well tested https://github.com/plataformatec/devise

RSpec is used for Unit Tests https://github.com/rspec/rspec-rails

Cucumber is used for Acceptance Tests
https://github.com/cucumber/cucumber-rails

Because of time limits no styling has been applied. 

## Documentation

The data from the API is handled by the Jobs Controller `app/controllers/jobs_controller.rb`.
The `fetch_api` method returns the reponse as a JSON-object. This is so I can display the jobs and job details in the Index and Show views.

`config/credentials.yml.enc` holds the encrypted API Token that is parsed in to `fetch_api` as `api_token`.
If the API Token needs to be changed, only `config/credentials.yml.enc` needs to be updated and the method should work as before.

To display the details of `description` and `priority` of each Job I tried to find the `Id` for each Job and pass the details from that specific job to the view, but I only got the details from one job rendered for all three jobs.
The three jobs that should appear is:
- New job within construction
- Maintenance of railways in Stockholm Län
- Bob the builder Test 1

In the header there is links to root of the page (Home), user registration (Registration) and user login (Login) when you are not logged in. Home and Logout links are displayed when you are logged in.

The details of a job is only availble for logged in users.

#### Testing

RSpec has been used for Unit testing
To run the tests type `rspec` in the terminal at the projects root folder

Cucumber has been used for acceptance testing
To run the tests type `cucumber` in the terminal at the projects root folder

Or to run both unit and acceptance tests type `rake`

## Deployment

The site has been deployed using Heroku. To visit the site go to: https://coredinationtest.herokuapp.com/

To run the application locally clone the github repo https://github.com/Andycutter/coredination_test_ror

In the root folder of the project run `bundle install` and `rails db:create db:migrate` in the terminal. Start the server by typing `rails s` in the terminal.

Visit your local server at `http://localhost:3000`

## Notes

You need to have an User and logged in to view the Job details by clicking on the Job title on the landing page.
Just register or login using a fake email e.g. test@random.com and a password like 'my-password'.

At the moment the same Job details are rendered for all three test jobs.
