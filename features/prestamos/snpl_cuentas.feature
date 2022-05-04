Feature: SNPL envío a cuentas

    Scenario: Main screen

        Given I'm at the main screen
        When I select send of money
        Then i should be at the "Envío de dinero" page

    Scenario: send of money screen (cuenta registrada)

        Given I'm at the send of money
        When I select who I send
        Then i should be at the "¿Cuánto quieres enviar" page

    Scenario: send of money screen (cuenta nueva)

        Given I'm at the send of money
        When I select who I send
        And my selection is new account
        Then i should be at the Form page

    #14 cuenta propia
    Scenario Outline: Form own  baz account

        Given I'm at the form account screen
        When I introduce account to <account>
        And account is to baz account
        And the account is equal to  14 positions
        And i click at continue button
        Then i should be at the Confirmed page

        Examples:
            | account        |
            | 11561200000034 |

    #18 cuenta clabe
    Scenario Outline: Form own  baz account(cuenta clabe)

        Given I'm at the form account screen
        When I introduce account to <account>
        And account is to baz account
        And the account is equal to  18 positions
        And i click at continue button
        Then i should be at the Confirmed page

        Examples:
            | account            |
            | 127180012000000341 |

    #16 tarjeta
    Scenario Outline: Form own  baz account(Tarjeta)

        Given I'm at the form account screen
        When I introduce account to <account>
        And account is to baz account
        And the account is equal to  16 positions
        And i click at continue button
        Then i should be at the Confirmed page

        Examples:
            | account          |
            | 4198220300000229 |

    #10 telefono
    Scenario Outline: Form own  baz account(Tarjeta)

        Given I'm at the form account screen
        When I introduce account to <account>
        And account is to baz account
        And the account is equal to  10 positions
        And i click at continue button
        Then i should be at the Confirmed page

        Examples:
            | account    |
            | 5512959678 |


    #interbancaria a 18
    Scenario Outline: Form  spei account (interbancaria)

        Given I'm at the form account screen
        When I introduce account to <account>
        And account isn't to baz account
        And the account is equal to 18 positions
        And i click at continue button
        Then i should be at the Confirmed page

        Examples:
            | account               |
            | 0121 8002 9350 931475 |

    #tarjeta de otro banco a 16
    Scenario Outline: Form  spei account (tarjeta)

        Given I'm at the form account screen
        When I introduce account to <account>
        And account isn't to baz account
        And the account is equal to 16 positions
        And i click at continue button
        Then i should be at the Confirmed page

        Examples:
            | account             |
            | 4152 3133 4770 2800 |

    #cuando trae la informacion del cliente
    Scenario: Confirmed screen with customer information
        Given i'm at the Confirmed screen
        When I can see the customer information
        And i click at continue button
        Then i should be at the"¿Cuanto quieres pagar?" page

    Scenario Outline: Confirmed without customer information
        Given i'm at the Confirmed screen
        And I can't see the customer information
        When I introduce the customer information to <customer>
        And i click at continue button
        Then i should be at the"¿Cuanto quieres pagar?" page
        Examples:
            | customer         |
            | Pepito fulanillo |


    Scenario Outline: How much do you want to pay? screen

        Given I'm at the "¿Cuanto quieres pagar?" page
        And I have a suitable customer for SNPL
        And I don't have delay periods
        And I have capability payment
        And not be an employee of "Grupo Salinas"
        When I introduce amount to <amount>
        And amount is between 100 and 70000
        And account is equals to baz account
        When i click at continue button
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
        Given I'm at main of the Face recognition journey
        When I click at continue button
        And I click at continue button at Instruction screen number 1
        When I click at continue button at Instruction screen number 2
        And I click at continue button at Instruction screen number 3
        When I'm at the Face recognition screen
        And I click at continue button
        And I focus my face at the camera
        When I verify the captured face is equal to customers face
        And I click at continue at Identity Confirmed screen
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


    Scenario: SNPL Ticket screen
        Given I'm at the Ticket screen
        When I scroll down
        And I click exit button
        Then I it will lauch the main screen
        And i receive an email