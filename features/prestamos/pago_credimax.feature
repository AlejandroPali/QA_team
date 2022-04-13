Feature: Pago_Credimax

    Background: Pago de Credimax sin atraso

        Scenario: Personal Credit Details screen
            Given I'm in the personal credit details page
            And the details of personal credit are display
            When I scroll down
            And I click on "Pagar"
            Then land in the "Pagar mis creditos" page

        Scenario: Pay My Credits screen 
            Given I'm in "Pagar mis creditos" page
            And the credit details are display
            When click on "Continuar"
            Then land in "Pagar mis creditos" page
            And the payments options are display


        Scenario: Pay My Credits screen (payment option "Pago semanal con descuento")
            Given I'm in "Pagar mis creditos" page
            And I have the option to select the payment
            When I click tooltip for "Pago semanal con descuento"
            And the details are display
            And click on the "X" to close it
            And show corresponding amount
            When select "Pago semanal con descuento"
            And click on "Continuar"
            Then land in "Pagar mis creditos" page
            And the payment summary are display

        Scenario: Pay My Credits screen (payment option "Pagar 2 semanas")
            Given I'm in "Pagar mis creditos" page
            And I have the option to select the payment
            When I click tooltip for "Pagar 2 semanas"
            And the details are display
            And click on the "X" to close it
            And show corresponding amount
            When select "Pagar 2 semanas"
            And click on "Continuar"
            Then land in "Pagar mis creditos" page
            And the payment summary are display

        Scenario: Pay My Credits screen (payment option "Pago para liquidar")
            Given I'm in "Pagar mis creditos" page
            And I have the option to select the payment
            When I click tooltip for "Pago para liquidar"
            And the details are display
            And click on the "X" to close it
            And show corresponding amount
            When I select "Pago para liquidar"
            And click on "Continuar"
            Then land in "Pagar mis creditos" page
            And the payment summary are display

        Scenario Outline: Pay My Credits screen (payment option "Otra cantidad")
            Given I'm in "Pagar mis creditos" page
            And I have the option to select the payment
            When selecting "Otra cantidad" a number pad is display
            And  enter an amount <another_amount>
            And the amount has to be equals or  greater than 1 
            And less o equal the to amount to liquidate
            And click on "Continuar"
            Then land in summary page
            And the payment summary are display
            Examples:
                | another_amount |
                | 1              |

    Background: Pago de Credimax con atraso

        Scenario: Pay My Credits screen (con atraso)
            Given I'm in "Pagar mis creditos" page
            And the credit details are display
            And I'm late on my account 
            When click on "Continuar"
            Then land in "Pagar mis creditos" page
            And the payments options are display

        Scenario: Pay My Credits screen (payment option "Pago requerido" con atraso)
            Given I'm in "Pagar mis creditos" page
            And I have the option to select the payment
            When I click tooltip for "Pago requerido"
            And the details are display
            And click on the "X" to close it
            And show corresponding amount
            When select "Pago requerido"
            And click on "Continuar"
            Then land in "Pagar mis creditos" page
            And the payment summary are display

        Scenario: Pay My Credits screen (payment option "Pagar 2 semanas" con atraso)
            Given I'm in "Pagar mis creditos" page
            And I have the option to select the payment
            When I click tooltip for "Pagar 2 semanas"
            And the details are display
            And click on the "X" to close it
            And show corresponding amount
            When select "Pagar 2 semanas"
            And click on "Continuar"
            Then land in "Pagar mis creditos" page
            And the payment summary are display

        Scenario: Pay My Credits screen (payment option "Pago para liquidar"con atraso)
            Given I'm in "Pagar mis creditos" page
            And I have the option to select the payment
            When I click tooltip for "Pago para liquidar"
            And the details are display
            And click on the "X" to close it
            And show corresponding amount
            When I select "Pago para liquidar"
            And click on "Continuar"
            Then land in "Pagar mis creditos" page
            And the payment summary are display
    
        Scenario: Summaryscreen
            Given I'm in summary page
            And the payment summary are display
            And "Editar" option is avaliable under "Que pago quieres hacer"
            When slide "baz" to the right to make the payment
            Then It lauch the "Clave" page

        Scenario Outline: Keycode screen

            Given I have land in the Clave page after
            And I have a number path to enter 6 digits
            And the message " Ingresar tu clave para continuar"
            And the option "olvide mi clave" for those who forgot thir code
            When click to enter the code a number pad is launch
            And  enter keycode <clave>
            Then the keycode is verify
            And it will lauch the ticket page

            Examples:s
                | clave  |
                | 147369 |


        Scenario: Ticket screen
            Given I'm in ticket page
            And the payment summay
            When I click button "salir"
            Then it launch the main screen
            And I receive a push notification
            And I receive an email