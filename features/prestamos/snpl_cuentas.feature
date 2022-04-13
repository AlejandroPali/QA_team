Feature: SNPL

    Background: SNPL Envío a Cuentas

        Scenario: Main screen

            Given I'm at the main screen
            When I select send of money
            Then It launch the "Envío de dinero" page

        Scenario: send of money screen (cuenta registrada)

            Given I'm at the send of money
            When I select who I send
            Then It launch the "¿Cuánto quieres enviar" page

        Scenario: send of money screen (cuenta nueva)

            Given I'm at the send of money
            When I select who I send
            And my selection is new account
            Then it launch the Form page

        Scenario Outline: Form own  baz account

            Given I'm at the form account screen
            When I introduce account to <account>
            And account is to baz account
            And the account is equal to 18 or 16 or 14 or 10 positions
            And click on continuar
            Then it launch the Confirmed page

            Examples:
                | account            |
                | 11561200000034     |
                | 5512959678         |
                | 127180012000000341 |
                | 4198220300000229   |

        Scenario Outline: Form  spei account

            Given I'm at the form account screen
            When I introduce account to <account>
            And account isn't to baz account
            And the account is equal to 18 or 14 positions
            And click on continuar
            Then it launch the Confirmed page

            Examples:
                | account               |
                | 0121 8002 9350 931475 |
                | 4152 3133 4770 2800   |



        Scenario: Confirmed screen

            Given i'm at the Confirmed screen
            When I can see the Evel's information
            And I click on button continue
            Then It launch the"¿Cuanto quieres pagar?" page

        Scenario Outline: How much do you want to pay? screen

            Given I'm at the "¿Cuanto quieres pagar?" page
            And I have a suitable client for BNPL
            When I introduce amount to <amount>
            And amount is between 100 and 70000
            And account is equals to baz account
            When click on continue button
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
            Then It lauch the Face recognition journey

        Scenario: Face recognition
            Given I'm at the Face recognition Page
            When I click on continue button
            And I click on continue button in Instruction screen number 1
            When I click on continue button in Instruction screen number 2
            And I click on continue button in Instruction screen number 3
            When I'm on the Face recognition screen
            And I click on continue button
            And I focus my face in the camera
            When I verify the captured face is equal to evel's face
            And I click on continue in Identity Confirmed screen
            Then It lauch the "Clave" page

        Scenario Outline: Second Keycode screen
            Given I have land in the Clave page after
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

    Background: SNPL Envío por Proximidad

        Scenario: Main screen

        Given I'm at the main screen
        When I select send by proximity
        Then It launch the "Envía por cercania" journey

        Scenario: Who do you send? screen
        Given i'm at Who do you send? screen
        And i see the user to  I will send money
        When i click on user
        Then it launch the How much do you want to pay? screen

        Scenario Outline: How much do you want to pay? screen

        Given I'm at the "¿Cuanto quieres pagar?" page
        And I have a suitable client for BNPL
        When I introduce amount to <amount>
        And amount is between 100 and 70000
        And account is equals to baz account
        When click on continue button
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
            Then It lauch the Face recognition journey

        Scenario: Face recognition
            Given I'm at the Face recognition Page
            When I click on continue button
            And I click on continue button in Instruction screen number 1
            When I click on continue button in Instruction screen number 2
            And I click on continue button in Instruction screen number 3
            When I'm on the Face recognition screen
            And I click on continue button
            And I focus my face in the camera
            When I verify the captured face is equal to evel's face
            And I click on continue in Identity Confirmed screen
            Then It lauch the "Clave" page

        Scenario Outline: Second Keycode screen
            Given I have land in the Clave page after
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

    Background: SNPL Envío por Chat

    Scenario: chat journey

            Given I'm at someone chat 
            When I click on send $
            Then It launch the "Envío de dinero" journey

            Scenario Outline: Second Keycode screen at the chat
            Given I have land in the Clave page after
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
        And I have a suitable client for SNPL
        When I introduce amount to <amount>
        And amount is between 100 and 70000
        And account is equals to baz account
        When click on continue button
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
            Then It lauch the "Clave" page

        Scenario Outline: Second Keycode screen
            Given I have land in the Clave page after
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