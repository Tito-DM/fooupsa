Feature: Create a recipe

  As a user
  so that a can share my food/drink recip
  I want to be able create a recip

  Scenario: Creating a new recipe
    Given I am on the create new recip page
    When  I fill in 'Name' with 'Arroz com feijao'
    And   I fill in 'Food origen' with 'Angola'
    And   I press on 'create recipe'
    Then  the number of recip on the database should be 1
    Then  I should see 'Recipe was successfully created'
