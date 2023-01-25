Feature: delete Api
  Scenario:delete
    * url 'http://localhost:3000'
    Given path '/person/1004'
    When method delete
    Then status 200