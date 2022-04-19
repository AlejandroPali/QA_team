Feature: SNPL Proximidad

    Scenario: Main screen

        Given I'm at the main screen
        When I select send by proximity
        Then i should be at the "Envía por cercania" journey

    Scenario: Who do you send? screen
        Given i'm at Who do you send? screen
        And i see the user to  I will send money
        When i click on user
        Then i should be at the How much do you want to pay? screen

    Scenario Outline: How much do you want to pay? screen

        Given I'm at the "¿Cuanto quieres pagar?" page
        And I have a suitable customer for SNPL
        And I don't have delay periods
        And I have capability payment
        And not be an employee of "Grupo Salinas"
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
        Then i should be at the Face recognition journey

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
        Then i should be at the "Clave" page

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
