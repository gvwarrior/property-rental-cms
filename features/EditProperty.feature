Feature: edit an existing property

  Scenario: Edit a property from the App

    Given I have added a property with address "789 Main St, Iowa City, IA, 52240", bedrooms "3", bathrooms "2" and price "1600"

    When I have edited the property with id "2" to change the price to "2100"
    Then I should see a property list entry with address "789 Main St, Iowa City, IA, 52240" and price "2100"
