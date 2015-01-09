Feature: Placing player 1's ships
  As player 1
  In order to place the ship
  I need to give the coordinates and orientation

  Scenario: Placing all ships
    Given I am ready to start the game
    When I input coordinates A1 and select Horizontally for aircraft carrier
    When I input coordinates B1 and select Horizontally for battleship
    When I input coordinates C1 and select Horizontally for destroyer
   	When I input coordinates D1 and select Horizontally for submarine
    When I input coordinates E1 and select Horizontally for patrol boat
    When I click "submit"
    Then I should see "All ships have been placed!"
