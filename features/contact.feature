Feature: Hackhaton Team 2 -kloia.com

  Background:
    Given visit contact page

  Scenario: Validate blank form
    When click Submit button
    Then validate "Please complete this required field." message

  Scenario: Validate email form
    When fill "email" with "xxd"
    Then validate "Email must be formatted correctly." message

  Scenario: Validate Burak Koyuncu
    Given fill "firstname" with "Burak"
    And fill "lastname" with "Koyuncu"
    And fill "company" with "kloia"
    And fill "email" with "b@k.com"
    When click Submit button
    Then validate "Thanks for your message. We'll be in contact shortly." message

  Scenario: Validate Umit Ozdemir
    Given fill "firstname" with "Umit"
    And fill "lastname" with "Ozdemir"
    And fill "company" with "kloia"
    And fill "email" with "u@o.com"
    When click Submit button
    Then validate "Thanks for your message. We'll be in contact shortly." message

  Scenario: Validate Emir Ozbir
    Given fill "firstname" with "Emir"
    And fill "lastname" with "Ozir"
    And fill "company" with "kloia"
    And fill "email" with "e@o.com"
    When click Submit button
    Then validate "Thanks for your message. We'll be in contact shortly." message