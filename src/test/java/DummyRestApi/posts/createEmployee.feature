Feature: post user in https://dummy.restapiexample.com/

  @CreateEmployee
  Scenario: post a user
    Given url "https://dummy.restapiexample.com/api/v1" + "/create"
    And request {"name":"test","salary":"123","age":"23"}
    When method post
    Then status 200
    And def id = $.data.id


  Scenario: incorrect Json format
    Given url "https://dummy.restapiexample.com/api/v1" + "/create"
    And request {"name":, "salary": "123","age":"2-3"}
    When method post
    Then status 429
