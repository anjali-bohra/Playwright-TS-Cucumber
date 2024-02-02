Feature: Registration
   

  Scenario Outline: User should be able to do a successful registration
    Given User navigates to the application
    And user clicks on register link
    When user enters the details "<frstname>", "<lastname>", "<email>", "<password>"
    And user clicks on register button
    Then user should be able to see message "Your registration completed" 

    Examples: 
      | frstname | lastname | email           | password |
      | harvey   | sepcter  | harvey12@test.com | pass@123 |
      | donna    | paulsen  | donna12@test.com  | pass@123 |


  Scenario: User should be able to do a successful registration by reading data from json file
    Given User navigates to the application
    And user clicks on register link
    When user gets the data from testdata file
    And user clicks on register button
    Then user should be able to see message "Your registration completed" 
