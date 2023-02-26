Feature: Update employee

  Scenario: UpdateEmployee
    * def id = 21
    Given url "https://dummy.restapiexample.com/api/v1/update/" + id
    And request {"name":"test","salary":"123","age":"23"}
    When method put
    Then status 200
    And match $.data.salary = "123"
