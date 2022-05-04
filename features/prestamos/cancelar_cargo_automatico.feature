Feature: Cancelar_Cargo_Automatico

    Scenario: Automatic Charge Cancelation
        Given I'm at the "Credito" dashboard
        When I click on the 3 dots "Configuracion"
        And the setting is display
        When I slide button "Cancelación de Cargo Automatico"
        And the alert for for confimation of the cancelation of automatic charge
        When I click on "Si" button
        Then i should be at the "Clave" page


    Scenario Outline: Keycode screen
        Given I have land at the Clave page after
        And I have a number path to enter 6 digits
        And the message " Ingresar tu clave para continuar"
        And the option "olvide mi clave" for those who forgot thir code
        When I click to enter the code a number pad is launch
        And I introduce the keycode to <clave>
        Then the keycode is verify
        And it will lauch the success page

        Examples:
            | clave  |
            | 147369 |

    Scenario: success screen
        Given I'm at the success page
        When I click on "Salir" button
        Then i should be at the main screen