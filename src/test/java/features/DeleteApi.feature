Feature: Delete Api
  Background:
    * url 'http://localhost:3000'
    * def requestPayload =
    """
     {
    "gender": "Karate",
    "last_name": "tom",
    "first_name": "Karate",
    "email": "Karate@hoca.tr"
  }
    """
  Scenario: Create a user the given data
    Given path "/person"
    And request requestPayload
    When method post
    Then status 201
    And match $.first_name == 'Karate'
    And match $.id == '#present'
#fetch the user id
    * def userId = $.id
    * print userId
 #2.delete the same user
    Given path '/person/' + userId
    When method delete
    Then status 200
  #3.get the same user with user id
    Given path '/person/' + userId
    When method GET
    Then status 404



