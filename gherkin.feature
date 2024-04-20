Feature: Product Search and Purchase Process on allegro.pl

  Background:
    Given the user is logged into their account on allegro.pl
    And is on the main page of allegro.pl

  Scenario: Searching for a product
    When the user enters the product name "smartphone" in the search field
    And clicks the "Search" button
    Then the user should see search results containing products related to "smartphone"

  Scenario: Selecting and adding a product to the cart
    When the user selects a specific product from the search results 
    And goes to the product page
    And clicks on the "Add to cart" button
    Then the user should see a confirmation message regarding the addition of the product to the cart

  Scenario: Proceeding to the checkout process
    When the user proceeds to the cart
    And clicks on the "Proceed to checkout" button
    Then the user should be redirected to the payment screen

  Scenario: Entering payment details and purchasing
    When the user enters their payment details
    And selects the payment method
    And clicks the "Make purchase" button
    Then the user should see a confirmation of the purchase

  Scenario: Purchase validation
    When the user goes to their purchase history
    And finds the latest transaction
    Then the user should see details about the purchased product
    And the price of the purchased product should match the price displayed at the time of purchase
    And the purchase status should be "Completed"
