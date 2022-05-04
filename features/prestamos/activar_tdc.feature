Feature: Activar TDC

    Scenario: Setting screen (Activate Your Card)
        Given I'm at the "Configuracion" page
        And the "Activar tu tarjeta" is display
        When I click at arrow  "Activar tu tarjeta"
        Then i should be at the "Activa tu tarjeta" page


    Scenario Outline: CVV screen
        Given I'm at the "Activa tu tarjeta" page
        And the "Ingresa el CVV" is display
        When I click at the field to enter the CVV code to <cvv>
        And the number pad is display to enter the number
        And I click at "Continuar"
        And cvv is equal to the card
        And cvv is equal to 3 digits
        Then i should be at the "Clave" page

        Examples:
            | cvv |
            | 103 |


    Scenario Outline: Keycode screen

        Given I'm at the "Clave" page after
        And I have a number path to enter 6 digits
        And the message " Ingresar tu clave para continuar"
        And the option "olvide mi clave" for those who forgot thir code
        When I click to enter the code a number pad is launch
        And I introduce the keycode to <clave>
        Then the keycode is verify
        And I should be at the Done page

        Examples:
            | clave  |
            | 147369 |


    Scenario: Done screen
        Given I'm at the Done page
        And the "Tu Tarjeta de credito baz ya esta activa" message
        And the explanation at how to consult the NIP from setting
        And the explanation at how to change your NIP
        When I click at "Ver NIP"
        Then i should be at  the "Clave" page



    Scenario Outline: Second Keycode screen

        Given I'm at the "Clave" page after
        And I have a number path to enter 6 digits
        And the message " Ingresar tu clave para continuar"
        And the option "olvide mi clave" for those who forgot thir code
        When click to enter the code a number pad is launch
        And I introduce the keycode to <clave>
        Then the keycode is verify
        And I should be at the "Ver NIP" page

        Examples:
            | clave  |
            | 147369 |


    Scenario: View NIP screen
        Given I'm at the "Ver NIP" page
        And the NIP is display
        When the time to see the NIP has ran out
        And I click at "Ver nuevamente"
        Then the Keycode screen will appear again


