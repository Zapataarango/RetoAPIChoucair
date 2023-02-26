Feature: Deletes

  Scenario: Delete an employee
    Given url https://dummy.restapiexample.com/api/v1/delete/2
    When method delete
    Then status 200
    And match $.message == "Successfully! Record has been deleted"

  Scenario: Delete an already delete employee
    Given url https://dummy.restapiexample.com/api/v1/delete/2
    When method delete
    Then status 200
    And match $.message == "Successfully! Record has been deleted""Error Occured! Page Not found, contact rstapi2example@gmail.com"