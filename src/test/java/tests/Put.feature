Feature: PUT API Demo

  Scenario: Put Demo 1
    Given url "https://reqres.in/api/users/2"
    And request {"name": "morpheus","job": "zion resident"}
    When method PUT
    Then status 200
    And print response
    And print responseStatus

    # https://www.youtube.com/watch?v=m_7kCwbM5Gw
    # Other features discussed in POST
    # Examples will apply here:
    # Background
    # Assertions
    # Get request body from file
    # Assert response from file