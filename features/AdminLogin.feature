Feature: Property owner (Admin) log in and sign up
  As the property owner, I want to have the authority of managing the property information posted in the app
  Property owner can log in his/her account

  Scenario: See log in option
    When I an on the login page
    Then I should see two empty boxes: "EMail" and "Password"
    And I should see the "Login to my account" button

  Scenario: See sign up option
    When I am on the login page
    Then I should see a clickable text "Sign-up for an account"
    When I click "Sign-up for an account"
    Then I should be redirected to the "Create A New Account" page

  Scenario: Successful log in
    When I am on the login page
    When I enter valid email and password and click "Log in to my account" button
    Then I should on the admin managing page

  Scenario: Unsuccessful log in
    When I am on the login page
    When I enter invalid email or password and click "Log in to my account" button
    Then I should got the message "Invalid email and password combination"