#https://www.youtube.com/watch?v=eChrICjIWQs

  # A simple Post API Scenario
Feature: Post API Demo

  Background:
    * url "https://reqres.in/api"
    * header Accept = "application/json"
    * def expectedOutput = read("response1.json")

  # Simple Post Request
  Scenario: Post Demo 1
    Given url "https://reqres.in/api/users"
    And request {"name": "João","job": "Arquiteto"}
    When method POST
    Then status 201
    And print response

  # Post with Background
  Scenario: Post Demo 2
    Given path "/users"
    And request {"name": "Maria", "job": "Enfermeira"}
    When method POST
    Then status 201
    And print response

  # Post with Assertions
  Scenario: Post Demo 3
    Given path "/users"
    And request {"name": "Julio", "job": "Quality Assurance"}
    When method POST
    Then status 201
    And match response == {"name": "Julio", "job": "Quality Assurance", "id": "#string", "createdAt": "#ignore"}
    And print response

    # Post with read response from file
  Scenario: Post Demo 4
    Given path "/users"
    And request {"name": "Joaquim", "job": "Estudante"}
    When method POST
    Then status 201
    And match response == expectedOutput
    And match $ == expectedOutput
    And print response

    # Post with read request body from file (Apenas um sinal de igual)
  Scenario: Post Demo 5
    Given path "/users"
    And def requestBody = read("request2.json")
    And request requestBody
    When method POST
    Then status 201
    And print response

    # Post with read request body from file (Apenas um sinal de igual)
  Scenario: Post Demo 6
    Given path "/users"
    # And def projectPath = java.lang.System.getProperty('user.dir')
    And def projectPath = karate.properties['user.dir']
    And print projectPath
    And def filePath = projectPath+'/src/test/java/data/request1.json'
    And print filePath
    # And def requestBody = read("request1.json")
    And def requestBody = filePath
    And request requestBody
    When method POST
    Then status 201
    And print response

    # Post with read body data from file and change request value
  Scenario: Post Demo 7
    Given path "/users"
    And def requestBody = read('request2.json')
    And set requestBody.job = 'Engenheiro'
    And request requestBody
    When method POST
    Then status 201
    And print response

