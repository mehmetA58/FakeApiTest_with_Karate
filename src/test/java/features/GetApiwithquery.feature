Feature: GET API with Query Parameters
  Scenario: gel all male users
    * def query = {gender: 'Male'}
    Given url 'http://localhost:3000/'
    And path 'person'
    And params query
    When method GET
    Then status 200
    * print response

  Scenario: gel all male and last name Efe users
    * def query = {gender: 'Male', last_name: 'Efe'}
    Given url 'http://localhost:3000/'
    And path 'person'
    And params query
    When method GET
    Then status 200
    * print response

  Scenario: gel all male and last name Efe users and with id
    * def query = {gender: 'Male', last_name: 'Efe' , id: 1000}
    Given url 'http://localhost:3000/'
    And path 'person'
    And params query
    When method GET
    Then status 200
    * print response

  Scenario: gel all male users and get users count
    * def query = {gender: 'Male'}
    Given url 'http://localhost:3000/'
    And path 'person'
    And params query
    When method GET
    Then status 200
    * def jsonResponse = response
    * def userCount = jsonResponse.length
    * print userCount
    * match userCount == 47