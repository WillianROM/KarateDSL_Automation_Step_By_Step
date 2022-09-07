Feature: Config demo

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  Scenario: Config demo 1
    Given print name

    # Simple Get Request
  Scenario: Get Demo 1
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response