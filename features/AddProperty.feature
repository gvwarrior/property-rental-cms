Feature: Allow admin to add a new property

  Scenario:  Add a new property (Declarative)
    When I have added a property with address "789 Main St, Iowa City, IA, 52240", bedrooms "3", bathrooms "2" and price "1600"
    And I am on admin page
    Then I should see the property with the address "789 Main St, Iowa City, IA, 52240", bedrooms "3", bathrooms "2" and price "1600"
