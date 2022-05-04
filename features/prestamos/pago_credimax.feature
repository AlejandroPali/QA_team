Feature: Pago_Credimax

    Scenario: Personal Credit Details screen
        Given I'm at the personal credit details page
        And the details of personal credit are display
        When I scroll down
        And I click at "Pagar" button
        Then i should be at the "Pagar mis creditos" page

    Scenario: Pay My Credits screen
        Given I'm at "Pagar mis creditos" page
        And the credit details are display
        When I click at continue button
        Then i should be at the "Pagar mis creditos" page
        And the payments options are display


    Scenario: Pay My Credits screen (payment option "Pago semanal con descuento")
        Given I'm at "Pagar mis creditos" page
        And I have the option to select the payment
        When I click tooltip for "Pago semanal con descuento"
        And the details are display
        And I click at the "X" to close it
        And show corresponding amount
        When I select "Pago semanal con descuento"
        And I click at "Continuar"
        Then i should be at the  Summary page 

    Scenario: Pay My Credits screen (payment option "Pagar 2 semanas")
        Given I'm at "Pagar mis creditos" page
        And I have the option to select the payment
        When I click tooltip for "Pagar 2 semanas"
        And the details are display
        And I click at the "X" to close it
        And show corresponding amount
        When I select "Pagar 2 semanas"
        And I click at continue button
        Then i should be at the  Summary page 

    Scenario: Pay My Credits screen (payment option "Pago para liquidar")
        Given I'm at "Pagar mis creditos" page
        And I have the option to select the payment
        When I click tooltip for "Pago para liquidar"
        And the details are display
        And I click at the "X" to close it
        And show corresponding amount
        When I select "Pago para liquidar"
        And I click at "Continuar"
        Then i should be at the  Summary page 

    Scenario Outline: Pay My Credits screen (payment option "Otra cantidad")
        Given I'm at "Pagar mis creditos" page
        And I have the option to select the payment
        When I selecting "Otra cantidad" a number pad is display
        And I enter an amount to <another_amount>
        And the amount has to be equals or  greater than 1
        And less o equal the to amount to liquidate
        And I click at "Continuar"
        Then i should be at the summary page
        Examples:
            | another_amount |
            | 1              |

    Scenario: Pay My Credits screen (con atraso)
        Given I'm at "Pagar mis creditos" page
        And the credit details are display
        And I'm late at my account
        When I click at continue button
        Then i should be at the "Pagar mis creditos" page

    Scenario: Pay My Credits screen (payment option "Pago requerido" con atraso)
        Given I'm at "Pagar mis creditos" page
        And I have the option to select the payment
        When I click tooltip for "Pago requerido"
        And the details are display
        And I click at the "X" to close it
        And show corresponding amount
        When I select "Pago requerido"
        And I click at continue button
        Then i should be at the  Summary page 

    Scenario: Pay My Credits screen (payment option "Pagar 2 semanas" con atraso)
        Given I'm at "Pagar mis creditos" page
        And I have the option to select the payment
        When I click tooltip for "Pagar 2 semanas"
        And the details are display
        And I click at the "X" to close it
        And show corresponding amount
        When I select "Pagar 2 semanas"
        And I click at continue button
        Then i should be at the  Summary page 

    Scenario: Pay My Credits screen (payment option "Pago para liquidar"con atraso)
        Given I'm at "Pagar mis creditos" page
        And I have the option to select the payment
        When I click tooltip for "Pago para liquidar"
        And the details are display
        And I click at the "X" to close it
        And show corresponding amount
        When I select "Pago para liquidar"
        And I click at continue button
        Then i should be at the  Summary page 

    Scenario: Summaryscreen
        Given I'm at summary page
        And the payment summary are display
        And "Editar" option is avaliable under "Que pago quieres hacer"
        When I slide "baz" to the right to make the payment
        Then i should be at the "Clave" page

    Scenario Outline: Keycode screen

        Given I'm at the Clave page 
        And I have a number path to enter 6 digits
        And the message " Ingresar tu clave para continuar"
        And the option "olvide mi clave" for those who forgot thir code
        When I click to enter the code a number pad is launch
        And I introduce "clave" to <clave>
        Then the keycode is verify
        And i should be at the ticket page

        Examples:s
            | clave  |
            | 147369 |


    Scenario: Ticket screen
        Given I'm at ticket page
        And the payment summay
        When I click exit button
        Then i should be at the main screen
        And I receive a push notification
        And I receive an email