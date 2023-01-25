Feature: OpenAI API Test

  Background:
    * url 'https://api.openai.com'
    * def requestPayload =
    """
     {
  "prompt": "Brainstorm some ideas combining VR and fitness:",
  "max_tokens": 300
  }
    """
  Scenario: Create a user the given data
    Given path "/v1/engines/davinci-codex/completions"
    * print header Authorization
    And header Content-Type = 'application/json'
    And header Authorization = 'Bearer sk-your api key'
    And request requestPayload
    When method post
    Then status 200
    * print response