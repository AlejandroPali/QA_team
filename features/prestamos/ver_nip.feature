Feature: Ver_NIP

    Scenario: View NIP screen at setting
        Given I'm at the "Configuracion" page
        And the "Ver NIP" is display
        When I click at arrow at "Ver NIP"
        Then is routered to "Ver NIP" page


    Scenario Outline: CVV screen
        Given I have landed at "Ver NIP" page
        And the "Ingresa el CVV" is display
        When I click at the field to enter the CVV code to <cvv>
        And the number pad is display to enter the number
        And i click at continue button
        And cvv is equal to the card
        And cvv is equal to 3 digits
        Then i should be at the "Clave" page

        Examples:
            | cvv |
            | 123 |

    Scenario Outline: Keycode screen

        Given I have land at the "Clave" page after
        And I have a number path to enter 6 digits
        And the message " Ingresar tu clave para continuar"
        And the option "olvide mi clave" for those who forgot thir code
        When I click to enter the code a number pad is launch
        And I introduce the  keycode <clave>
        Then the keycode is verify
        And it will lauch the "Ver NIP" page

        Examples:
            | clave  |
            | 147369 |


    Scenario: View NIP screen
        Given I landed at "Ver NIP" page
        And the NIP is display
        When the ime to see the NIP has ran out
        And I click at "Ver nuevamente"
        Then the NIP will appear again
