Feature: Pago_TDC


    Scenario: Credit Card Account screen/Payment
        Given the credit card account details is display
        And the option to make a payment is avaliable
        And the current transaction are displayed
        When click at "Pagar"
        Then land at the "Pagar Tarjeta de" page


    Scenario: Pay Card Of screen("Pago para no generar intereses")
        Given I'm at the  "Pagar Tarjeta de" page
        And the payment details are display
        When select "Pago para no generar intereses"
        And the corresponing amount is display
        When click "Continuar"
        Then land at "Pagar Tarjeta de" page
        And the payment summary are display


    Scenario: Pay Card Of screen("Pago minimo")
        Given I'm at the  "Pagar Tarjeta de" page
        And the payment details are display
        When select "Pago minimo"
        And the corresponing amount is display
        When click "Continuar"
        Then land at "Pagar Tarjeta de" page
        And the payment summary are display


    Scenario: Pay Card Of screen("Pago para liquidar")
        Given I'm at the  "Pagar Tarjeta de" page
        And the payment details are display
        When select "Pago para liquidar"
        And the corresponing amount is display
        When click "Continuar"
        Then land at "Pagar mis creditos" page
        And the payment summary are display

    Scenario Outline: Pay Card Of screen("Otra cantidad")
        Given I'm at the  "Pagar Tarjeta de" page
        And the payment details are display
        When selecting "Otra cantidad" a number pad is display
        And  enter an amount <another_amount>
        And click at "Continuar"
        Then land at Summary page
        And the payment summary are display
        Examples:
            | another_amount |
            | 0              |
            | 1              |

    Scenario: Summary screen
        Given I'm at Summary page
        And the payment summary are display
        And at "Que pago quieres hacer" you have the option "Editar"
        When slide "baz" to the right to make the payment
        Then i should be at the "Clave" page

    Scenario Outline: Keycode screen

        Given I have land at the "Clave" page after
        And I have a number path to enter 6 digits
        And the message " Ingresar tu clave para continuar"
        And the option "olvide mi clave" for those who forgot thir code
        When click to enter the code a number pad is launch
        And  enter keycode <clave>
        Then the keycode is verify
        And it will lauch the Successful Payment page

        Examples:
            | clave  |
            | 147369 |


    Scenario: Successful Payment screen
        Given I'm at Successful Payment page
        And the payment summay
        When I click button "salir"
        Then i should be at the main screen
        And I receive a push notification
        And I receive an email