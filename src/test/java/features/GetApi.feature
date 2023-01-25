Feature: GET API
  Scenario: Get All user
    Given url 'http://localhost:3000/'
    And path 'person'
    When method GET
    Then status 200
    * print response
    * def jsonResponse = response
    * print jsonResponse
    * def firstName = jsonResponse[0].first_name
    * def lastName = jsonResponse[0].last_name
    * def id = jsonResponse[0].id
    * print firstName
    * match firstName == 'Bastian'
    * match lastName == 'Dalzell'
    * match id == 2


  Scenario: Get All user not founds
    Given url 'http://localhost:3000/person'
    And path '1'
    When method GET
    Then status 404

