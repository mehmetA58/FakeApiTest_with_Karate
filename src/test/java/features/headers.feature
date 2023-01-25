Feature: GET API headers feature
  Scenario: pass the user request with headers
    Given header Content-Type = 'application/json; charset=utf-8'
    And header Connection = 'keep-alive'
    And header User-Agent = 'Apache-HttpClient/4.5.12 (Java/11.0.15)[\r][\n]'
    When url 'http://localhost:3000/'
    And path 'person'
    When method GET
    Then status 200
    * print response
