Feature: Getters

  Scenario: Get all employees
    Given url "https://dummy.restapiexample.com/api/v1/employees"
    When method get
    Then status 200
    And match $.message == "Successfully! All records has been fetched."

  Scenario: Get employee by id
    * def id = 1
    Given url "https://dummy.restapiexample.com/api/v1/employee/" + id
    When method get
    Then status 200

    Scenario: Incorrect endpoint
      * def id = 'error'
      Given url "https://dummy.restapiexample.com/api/v1/employee/" + id
      When method get
      Then status 200