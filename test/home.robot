*** Settings ***
Resource    ../steps/home_steps.robot
Resource    ../steps/reservation_steps.robot

*** Test Cases ***
User should be able to find a ticket
    Given User on kai website
    When User select station
    And User select date
    And Click Pesan dan Cari Kereta button
    Then Display reservation page