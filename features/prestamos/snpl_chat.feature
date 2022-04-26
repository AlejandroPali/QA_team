Feature: SNPL Chat

    Scenario: chat
        Given I'm at someone chat
        And i have a conversation before to sending money
        When I click at send $
        Then i should be at the "Envío de dinero" journey

    Scenario Outline: Second Keycode screen at the chat
        Given I have land at the Clave page after
        And I have a number path to enter 6 digits
        And the message " Ingresar tu clave para continuar"
        And the option "olvide mi clave" for those who forgot thir code
        When click to enter the code a number pad is launch
        And  enter keycode <clave>
        Then the keycode is verify
        And it will lauch the ticket page

        Examples:
            | clave  |
            | 147369 |

    Scenario Outline: How much do you want to pay? screen

        Given I'm at the "¿Cuanto quieres pagar?" page
        And I have a suitable customer for SNPL
        And I don't have delay periods
        And I have capability payment
        And not be an employee of "Grupo Salinas"
        When I introduce amount to <amount>
        And amount is between 100 and 70000
        And account is equals to baz account
        When click at continue button
        Then it will lauch the "Elige modo de envío" page

        Examples:
            | amount |
            | 100    |
            | 180    |

    Scenario: choose sending mode screen

        Given I'm at the "Elige modo de envío" screen
        And i have the option SNPL
        When i select the option SNPL
        And i can see the personalization of my payments
        When i choose some payment mode
        Then it will launch the Payment summary screen

    Scenario: SNPL shipping summary screen

        Given i'm at Payment summary screen
        And I can see the shipping data
        When I swipe to the right the "baz" button
        Then i should be at the "Clave" page

    Scenario Outline: Second Keycode screen
        Given I have land at the Clave page after
        And I have a number path to enter 6 digits
        And the message " Ingresar tu clave para continuar"
        And the option "olvide mi clave" for those who forgot thir code
        When click to enter the code a number pad is launch
        And  enter keycode <clave>
        Then the keycode is verify
        And it will lauch the ticket page

        Examples:
            | clave  |
            | 147369 |


    Scenario: SNPL Ticket screen
        Given I'm at the Ticket screen
        When I scroll down
        And I click exit button
        Then I it will lauch the main screen
        And i receive an email
        And it send the ticket to chat coversation