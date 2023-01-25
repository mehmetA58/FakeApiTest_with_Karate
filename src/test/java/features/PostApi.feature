Feature: Create user using post api
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
