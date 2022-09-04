Feature: Sample API Test

  Scenario: Test a sample GET API
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200

