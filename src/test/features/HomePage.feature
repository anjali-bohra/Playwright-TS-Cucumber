Feature: Home Page

Background: 
Given User navigates to the application

@smoke
Scenario: User should be able to verify Home Page Menu
Then user should see the Home Page title "nopCommerce demo store"

@regression
Scenario: User should be able to verify Home Page Search icon
Then user should see the search icon

@regression
Scenario: User should be able to verify Home Page Logo Validation
Then user should see the home page logo

@regression
Scenario: User should be able to verify Home Page Header Validation
Then user should see the home page header