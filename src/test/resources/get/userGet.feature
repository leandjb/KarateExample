Feature: Get user from ReqRes.in

  Scenario: Get a user registered
    Given url "https://reqres.in/" + "/api/users/" + "2"
    When method get
    Then status 200

  Scenario: Get a user unregistered
    Given url "https://reqres.in/" + "/api/users/" + "2"
    When method get
    Then status 400