# https://www.youtube.com/watch?v=iHCTs8qT_A8
Feature: Delete API Demo

  Scenario: Delete Demo 1
    Given url 'https://reqres.in/api/users/2'
    When method DELETE
    Then status 204
    And print responseStatus
    And print response