Feature: Login

Background: 
Given User navigates to the application

Scenario: User should be able to verify Login Button
Then User should see login link on the login page

Scenario: User should be able to login via valid credentials 
And user clicks on register link
And user enters the details "frst", "lastname", "test121@test.com", "test@123"
And user clicks on register button
And user should be able to see message "Your registration completed" 
And User clicks the login link
When user enters the login details "test121@test.com", "test@123"
And user clicks on the login Page
 Then user should see the Home Page title "nopCommerce demo store"

Scenario: User should not be able to login via invalid credentials
And User clicks the login link
When user enters the login details "t@test.com", "test@123"
And user clicks on the login Page
Then User should see the error message "Login was unsuccessful. Please correct the errors and try again.No customer account found"

Scenario: User should be able to verify Forget Password Link
And User clicks the login link
When user clicks on forgot password link
Then User should navigate to password recovery page "nopCommerce demo store. Password Recovery"

Scenario: User should be able to verify Remember me Link
And User clicks the login link
When user enters the login details "test123@test.com", "test@123"
And user checks the remember me checkbox
And user clicks on the login Page
Then user should see the Home Page title "nopCommerce demo store"


 