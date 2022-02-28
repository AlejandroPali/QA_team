Feature: BNPL

    Background: BNPL

    Scenario: "Mis Pagos" screen

        Given I'm at the "Mis Pagos" screen
        When I select make a Payment with QR
        And Í have a QR code
        When the camera by captured QR is displayed
        And I Capture the QR
        Then It lauch the "Clave" page

    Scenario Outline: Keycode screen

        Given I have land in the Clave page after
        And I have a number path to enter 6 digits
        And the message " Ingresar tu clave para continuar"
        And the option "olvide mi clave" for those who forgot thir code
        When click to enter the code a number pad is launch
        And  enter keycode <clave>
        Then the keycode is verify
        And it will lauch the "¿Cuanto quieres pagar?" page

        Examples:
            | clave  |
            | 147369 |

    Scenario Outline: How much do you want to pay? screen

        Given I'm at the "¿Cuanto quieres pagar?" page
        And I have a suitable client for BNPL
        When I introduce amount to <amount>
        And amount is between 100 and 70000
        When click on continue button
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
        When I haven't a debit balance
        Then I can see the option pay later
        And i can see two options more if the amount is high

    Scenario: How do you want to pay it?(pay later)
        Given I'm at the "¿Cómo lo quieres pagar?" screen
        When my capability of payment is greater than or equal to amount
        And i can see the option pay later
        When I select pay later
        And pay later options ar "4 payments" or "8 payments" or "10 payments"
        When i click on continue button
        Then It lauch the Face recognition journey

    Scenario: Face recognition

        Given I'm at the Face recognition Page
        When I click on continue button
        When I click on continue button in Instruction screen number 1
        When I click on continue button in Instruction screen number 2
        When I click on continue button in Instruction screen number 3
        When I'm on the Face recognition screen
        When I click on continue button
        When I focus my face in the camera
        And I verify the captured face is equal to Evel's face
        When I click on continue in Identity Confirmed screen
        Then the "Resumen" page is display

    Scenario: Payment summary with QR
        Given I'm at the Summary screen
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
        And it will lauch the ticket page

        Examples:
            | clave  |
            | 147369 |

    Scenario: Ticket screen
        Given IWm at the Ticket screen
        When I scroll down
        When I click exit button
        Then I it will lauch the main screen
        And i receive an email


