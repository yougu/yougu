Feature: Homepage

  To provide information about Yougu.
  
  Scenario: Show default homepage
    Given I'm a guest
    When I go to homepage
    Then I should see "Yougu"
    And I should see a link "demo sprint"
    
  Scenario: Show homepage for product owner  
    Given I'm a product owner
    And I'm logged in
    When I go to homepage
    Then I should see "Yougu"
    And I should see a link "your sprint"
  