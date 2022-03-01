Feature: Cargo_Automatico

    Background: Cargo Automatico en Ticket

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

        Scenario Outline: Keycode screen
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

    Background: Cargo Automatico en Configuracion

        Scenario: Automatic Charge Activation
            Given I´m in the "Credito" dashboard
            When I click on the 3 dots "Configuracion"
            And the setting is display
            When I slide button "Activación de Cargo Automatico"
            Then I routered to benefits page

        Scenario: Benefits screen
            Given I'm at the Benefits screen
            When I click on continue button
            Then It launch the summary screen

        Scenario: Summary screen
            Given i'm at the summary screen
            When I swipe to the right the "baz" button
            Then It lauch the "Clave" page

        Scenario Outline: Keycode screen
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
            Then it launch the setting screen

        Scenario: Automatic Charge Cancelation
            Given I'm in the "Credito" dashboard
            When I click on the 3 dots "Configuracion"
            And the setting is display
            When I slide button "Cancelación de Cargo Automatico"
            And the alert for for confimation of the cancelation of automatic charge
            When click on "Si"
            And land in the keycode page
            When enter the keycode
            And land in the success page
            Then click on "Salir"