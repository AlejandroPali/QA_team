Feature: Cargo_Automatico

    Background: Cargo Automatico

    Scenario: Activated Automatic Charge
        Given  I'm at the ticket screen
        When I scroll down
        And I see the Automatic Charge modal
        When I click on button Activate
        Then It launch the Automatic Charge journey

    Scenario: Benefits screen
        Given I'm at the Benefits screen
        When I click on continue button
        Then It launch the summary screen

    Scenario: Summary screen
        Given i'm at the summary screen
        When I swipe to the right the "baz" button
        Then It lauch the "Clave" page

        Scenarion Outline: Keycode screen
        Given I have land in the Clave page after
        And I have a number path to enter 6 digits
        And the message " Ingresar tu clave para continuar"
        And the option "olvide mi clave" for those who forgot thir code
        When click to enter the code a number pad is launch
        And  enter keycode <clave>
        Then the keycode is verify
        And it will lauch the success page

        Examples:
            | clave  |
            | 147369 |

    Scenario: Success screen

        Given I'm at the Success screen
        When I click button "salir"
        Then it launch the ticket screen
        And I receive a push notification
        And I receive an email