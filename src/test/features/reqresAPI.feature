Feature: reqresAPI

  @api
  Scenario: User should be able to get the single user details
    When user GET resource 'users/2'
    Then The status code is 200
    And The status text is 'OK'

  @api
  Scenario: User should be able to get the multiple user details
    When user GET resource 'users?page=3'
    Then The status code is 200
    And The status text is 'OK'
    And The page is 3 in response

  @api
  Scenario: User should be able to post the user details
    Given user has prepared request body as:
      """
      {
     "name": "morpheus",
       "job": "leader"
      }
      """
    When user POST resource 'users'
    Then The status code is 201
    And The status text is 'Created'

  @api
  Scenario: User should be able to register a new user
    Given user has prepared request body as:
      """
      {
       "email": "eve.holt@reqres.in",
       "password": "pistol"
      }
      """
    When user POST resource 'register'
    Then The status code is 200
    And The status text is 'OK'

  @api
  Scenario: User should be able to do a successful login with valid credentials
    Given user has prepared request body as:
      """
      {
       "email": "eve.holt@reqres.in",
       "password": "cityslicka"
      }
      """
    When user POST resource 'login'
    Then The status code is 200
    And The status text is 'OK'

  @api
  Scenario: User should be able to update an exist user job details using PUT
    Given user has prepared request body as:
      """
      {
       "name": "new name",
       "job": "new job"
      }
      """
    When user PUT resource 'users/2'
    And The status code is 200
    And The status text is 'OK'
    And The updated name is "new name"
    And The updated job is "new job"

  @api
  Scenario: User should be able to update an exist user job details using PATCH
    Given user has prepared request body as:
      """
      {
       "name": "updated name",
       "job": "updated job"
      }
      """
    When user PATCH resource 'users/2'
    And The status code is 200
    And The status text is 'OK'
    And The updated name is "updated name"
    And The updated job is "updated job"

  @api
  Scenario: User should be able to delete the user details
    When user DELETE resource 'users/2'
    And The status code is 204
    And The status text is 'No Content'

  @api
  Scenario: User should not be able to do a successful login without entering the password
    Given user has prepared request body as:
      """
      {
     "email": "peter@klaven"
      }
      """
    When user POST resource 'login'
    Then The status code is 400
    And The status text is 'Bad Request'

  @api
  Scenario: User should be unable to register the user without password
    Given user has prepared request body as:
      """
      {
     "email": "sydney@fife"
      }
      """
    When user POST resource 'register'
    Then The status code is 400
    And The status text is 'Bad Request'

  @api
  Scenario: User should not get the user details when user id is not found
    When user GET resource 'users/23'
    Then The status code is 'NOT FOUND'
