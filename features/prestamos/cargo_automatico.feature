Feature: Cargo_Automatico

    Scenario: Activated Automatic Charge
        Given  I'm at the ticket screen
        When I scroll down
        And I see the Automatic Charge modal
        When I click on button Activate
        Then i should be at the Automatic Charge journey

    Scenario: Benefits screen
        Given I'm at the Benefits screen
        When I click on continue button
        Then i should be at the summary screen

    Scenario: Summary screen
        Given i'm at the summary screen
        When I swipe to the right the "baz" button
        Then i should be at the "Clave" page

    Scenario Outline: Keycode screen
        Given I have land at the Clave page after
        And I have a number path to enter 6 digits
        And the message " Ingresar tu clave para continuar"
        And the option "olvide mi clave" for those who forgot thir code
        When click to enter the code a number pad is launch
        And  enter keycode <clave>
        Then the keycode is verify
        And i should be at the success page

        Examples:
            | clave  |
            | 147369 |

    Scenario: Success screen

        Given I'm at the Success screen
        When I click button "salir"
        Then i should be at the ticket screen
        And I receive a push notification
        And I receive an email

    #configuracion
    Scenario: Automatic Charge Activation
        Given I´m at the "Credito" dashboard
        When I click on the 3 dots "Configuracion"
        And the setting is display
        When I slide button "Activación de Cargo Automatico"
        Then I routered to benefits page

    Scenario: Benefits screen
        Given I'm at the Benefits screen
        When I click on continue button
        Then i should be at the summary screen

    Scenario: Summary screen
        Given i'm at the summary screen
        When I swipe to the right the "baz" button
        Then i should be at the "Clave" page

    Scenario Outline: Keycode screen
        Given I have land at the Clave page after
        And I have a number path to enter 6 digits
        And the message " Ingresar tu clave para continuar"
        And the option "olvide mi clave" for those who forgot thir code
        When click to enter the code a number pad is launch
        And  enter keycode <clave>
        Then the keycode is verify
        And i should be at the success page

        Examples:
            | clave  |
            | 147369 |

    Scenario: Success screen

        Given I'm at the Success screen
        When I click button "salir"
        Then i should be at the setting screen

    Scenario: Automatic Charge Cancelation
        Given I'm at the "Credito" dashboard
        When I click on the 3 dots "Configuracion"
        And the setting is display
        When I slide button "Cancelación de Cargo Automatico"
        And the alert for for confimation of the cancelation of automatic charge
        When click on "Si"
        And land at the keycode page
        When enter the keycode
        And land at the success page
        Then click on "Salir"