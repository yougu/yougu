Feature Authentication

  Users should be able to register themselves and to logon. Depending on roles users should be able to see stuff.
  
  Scenario: successful login
  
    Given I am the registered user Henk Verstraeten
    And I am on the login page
    When I login with valid credentials
    Then I should be on the home page
    And I should see "Successfully logged in."