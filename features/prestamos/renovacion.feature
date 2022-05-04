Feature: Renovacion

    Scenario: Banner at main screen
        Given I'm at the main screen
        And I have a suitable customer for "Renovacion"
        When I scroll down
        And the product banner is display
        When I click at the banner
        Then i should be at the Benefit screen

    Scenario: Benefit screen
        Given i'm at the Benefit screen
        When i click at continue button
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
        Then it will lauch the Best Offer screen

    Scenario: Best Offer screen
        Given I'm at the Best offer 
        And the Best Offer is display with amount(according to the payment capability)
        When I click at tooltip for "Pago digital"
        And the Legal information is display
        When I click at tooltip for "Pago semanal con descuento"
        And the Legal information is display
        When I click at tooltip for "Pago semanal"
        And the Legal information is display
        When I click at "Personalizar credito"
        Then the personalize credit page is display

    Scenario: Personalize Credit screen
        Given I'm at personalize credit
        And it display the best offer amount and time frame to pay
        And dispalye the option to modify the amount
        And modify the period of time to pay
        When the amount has been selected from ¿Cuanto dinero necesitas?
        And I scroll to select the amount I can see the amount changing at the top of the screen till I have reach the amount desire
        And the "Pago desde baz" changes too
        When I select the period of time from "¿En cuanto tiempo quieres pagarlo?"
        And I discrease the amount of weeks the amount at "Paga desde baz" change or if amount of week increases the amount at "Paga desde baz" changes
        Then the personalize credit with amount desire and period of time is display
        And I click at the option "Lo quiero"
        Then i should be at the summary page

    Scenario: Summary screen(From Personalized credit)
        Given I have land it at Summary page after clicking at "Lo quiero"
        And had personalize the credit summary details are display
        And the option to edit is under "Editar"
        And the details "Monto", "Plazo", "Pago digital", "Pago semanal con descuento", "Pago semanal"
        When I Slide the "baz" button to the right
        Then i should be at the Keycode screen

    Scenario Outline: Keycode screen
        Given I'm at the Clave page 
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
        Given I have provided the keycode
        And landed at ticket page with the summary of the credit
        When I click at exit button
        Then I will exit
        And receive an email

