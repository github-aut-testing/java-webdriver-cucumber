@market
  Feature: Marketing app test suite

    @market1
    Scenario: Market basic test
#      Given I go to "Google" page
#      And I print page details in console
      Given I go to "Quote" page
      And I print page details in console
#      And I go back and forward, then refresh the page
      And I change resolution to "phone"
      And I change resolution to "maximize"

#Homework5-b (a- is in java.feature)
    @market2
    Scenario: Market exercise with findElement(By(xpath))
      Given I go to "quote" page
      When I fill out required fields
      And I submit the form
       #Assertions exercise
      Then I verify that submitted required fields saved correctly

    @market3
    Scenario: Market exercise with email and optional fields
      Given I go to "quote" page
      When I fill out required fields
       #Email field behavior exercise and optional fields
      And I verify email field behavior
      And I fill out optional fields
      And I submit the form
      Then I verify that submitted required and optional fields saved correctly