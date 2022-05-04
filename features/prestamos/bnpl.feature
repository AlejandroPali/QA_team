Feature: BNPL

    Scenario: main screen

        Given I'm at the main screen
        When I select make a Payment with QR
        And Í have a QR code
        When the camera by captured QR is displayed
        And I Capture the QR
        Then i should be at the "Clave" page

    Scenario Outline: Keycode screen

        Given I have land at the Clave page after
        And I have a number path to enter 6 digits
        And the message " Ingresar tu clave para continuar"
        And the option "olvide mi clave" for those who forgot thir code
        When click to enter the code a number pad is launch
        And I introduce the keycode to <clave>
        Then the keycode is verify
        And it will lauch the "¿Cuanto quieres pagar?" page

        Examples:
            | clave  |
            | 147369 |

    Scenario Outline: How much do you want to pay? screen

        Given I'm at the "¿Cuanto quieres pagar?" page
        And I have a suitable customer for BNPL
        And I don't have delay periods
        And I have capability payment
        And not be an employee of "Grupo Salinas"
        When I introduce amount to <amount>
        And amount is between 100 and 70000
        When I click on continue button
        Then it will lauch the "¿Cómo lo quieres pagar?" page

        Examples:
            | amount |
            | 100    |
            | 180    |


    Scenario: How do you want to pay it? (con saldo en debito y con bnpl)

        Given I'm at the "¿Cómo lo quieres pagar?" page
        When my capability of payment is greater than or equal to amount
        When I have a debit balance greater than or equal to amount
        Then I can see the option pay later and pay now

    Scenario: How do you want to pay it? (sin saldo en debito y con bnpl)

        Given I'm at the "¿Cómo lo quieres pagar?" screen
        When my capability of payment is greater than or equal to amount
        And I haven't a debit balance
        Then I can see the option pay later
        And i can see two options more if the amount is high

    Scenario: How do you want to pay it?(pay later)
        Given I'm at the "¿Cómo lo quieres pagar?" screen
        When my capability of payment is greater than or equal to amount
        And i can see the option pay later
        When I select pay later
        And pay later options ar "4 payments" or "8 payments" or "10 payments"
        When i click on continue button
        Then i should be at the Face recognition journey

    Scenario: Face recognition
        Given I'm at main of the Face recognition journey
        When I click on continue button
        And I click on continue button at Instruction screen number 1
        When I click on continue button at Instruction screen number 2
        And I click on continue button at Instruction screen number 3
        When I'm on the Face recognition screen
        And I click on continue button
        And I focus my face at the camera
        When I verify the captured face is equal to customers face
        And I click on continue at Identity Confirmed screen
        Then the "Resumen" page is display

    Scenario: Payment summary with QR
        Given I'm at the Summary screen
        When I swipe to the right the "baz" button
        Then i should be at the "Clave" page

    Scenario Outline: Second Keycode screen
        Given I have land at the Clave page after
        And I have a number path to enter 6 digits
        And the message " Ingresar tu clave para continuar"
        And the option "olvide mi clave" for those who forgot thir code
        When I click to enter the code a number pad is launch
        And I introduce the keycode to <clave>
        Then the keycode is verify
        And it will lauch the ticket page

        Examples:
            | clave  |
            | 147369 |

    Scenario: Ticket screen
        Given I'm at the Ticket screen
        When I scroll down
        And I click exit button
        Then I it will lauch the main screen
        And i receive an email


