Feature: House owner log in and sign up
  As a house owner who want to post renting information
  So I can create an account to manage my properties
  Property owner who first uses this app can create an account
  Property owner who already have an account can log in his/her account

  Scenario: Successful log in
    When I am on the login page
    When I enter valid email and password and click "Login" button
    Then I should on the property managing page

  Scenario: Unsuccessful log in
    When I am on the login page
    When I enter invalid email or password and click "Login" button
    Then I should got the message "Invalid email/password combination"

  Scenario: See create a new account option
    When I am on the "Create A New Account" page
    Then I should see the follwing empty boxes: "Username", "EMail", "Password", "Passwrod Confirmation"
    And I should see the "Create my account" button

  Scenario: Successful create a new account
    When I am on the "Create A New Account" page
    When I enter an unregistered and valid email and valid passward
    And I click "Creat a new account"
    Then I should on the "Login" page and get a message "Your account has been successfully created"