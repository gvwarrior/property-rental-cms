Feature: View properties
  As a potential home renter
  So I can view rental options
  I wish to view all available properties for rent

Background: movies have been added to database

  Given the following movies have been added to RottenPotatoes:
    | address                   | bedrooms | bathrooms | sqft | price | url
    | 555 South Dodge Street    | 3      | 3  | 2100          | 1500  | www.test.com

Scenario: See available properties
  When I am on the properties page
  Then I should see the property with the address: "555 South Dodge Street"

Scenario: View Property Details
  Given I am on the properties page
  When I click "More Info"
  Then I should see property details