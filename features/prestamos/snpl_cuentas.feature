Feature: SNPL

    Background: SNPL Envío a Cuentas

        Scenario: Main screen

            Given I'm at the main screen 
            When I select sending of money 
            Then It launch the "Envío de dinero" page

        Scenario: sending of money screen (cuenta registrada)

            Given I'm at the sending of money
            When I select who I send
            Then It launch the "¿Cuánto quieres enviar" page

        Scenario: sending of money screen (cuenta nueva)

            Given I'm at the sending of money
            When I select who I send
            And my selection is new account 
            Then it launch the Form page
        
        Scenario: Form account 

            Given I'm at the form account screen
            When I introduce account to <account>
            And click on continuar
            Then it launch the Confirmed page

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
            When I click on continue button in Instruction screen number 1
            When I click on continue button in Instruction screen number 2
            When I click on continue button in Instruction screen number 3
            When I'm on the Face recognition screen
            When I click on continue button
            And I focus my face in the camera
            Then I verify the captured face is equal to evel's face
            And I click on continue in Identity Confirmed screen
            And ticket screen is display

        Scenario: Ticket screen
            Given I'm at the Ticket screen
            When I scroll down
            And I click exit button
            Then I it will lauch the main screen
            And i receive an email
