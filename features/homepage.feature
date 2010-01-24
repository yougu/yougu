Feature: Homepage

  To provide information about Yougu.
  
  Scenario: Show default homepage
    Given I'm a guest
    When I go to the homepage
    Then I should see "Yougu"
    And I should see a link "Demo Sprint"
    
  Scenario: Show homepage for product owner  
    Given I'm a product owner
    And I'm logged in
    When I go to the homepage
    Then I should see "Yougu"
    And I should see a link "Your Sprint"
  