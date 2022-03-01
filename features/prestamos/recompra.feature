Feature: Recompra

    Background: Recompra

    Scenario: Banner at main screen
        Given Im at the main screen
        And I have a suitable client for "Recompra"
        When I scroll down
        And the product banner is display
        When click on the banner
        Then Benefits page is displayed

    Scenario: Benefits screen
        Given I have click the banner for "Recompra"
        When I land in the benefits page
        And the benefits are display
        When i click on tooltip
        And the Legal information is display
        When I click on continue button
        Then it will launch Face recognition

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
        And Best Offer page is display


    Scenario: Best Offer screen(Personalizar credito)
        Given I have i have click on continue in the Benefit page
        And land in the Best offer page under "Recompra"
        And the Best Offer is display with amount(according to the payment capability)
        When I click on tooltip for "Pago digital"
        And the Legal information is display
        When I click on tooltip for "Pago semanal con descuento"
        And the Legal information is display
        When I click on tooltip for "Pago semanal"
        And the Legal information is display
        When click on "Personalizar credito"
        Then the personalize credit page is display


    Scenario: Personalize Credit screen
        Given I have click on personalize credit from Best offer page
        And it display the best offer amount and time frame to pay
        And dispalye the option to modify the amount
        And modify the period of time to pay
        When the amount has been selected from ¿Cuanto dinero necesitas?
        And as you scroll to select the amount you can see the amount changing at the top of the screen till you have reach the amount desire
        And the "Pago desde baz" changes too
        When you select the period of time from "¿En cuanto tiempo quieres pagarlo?"
        And as you discrease the amount of weeks the amount in "Paga desde baz" change or if amount of week increases the amount in "Paga desde baz" changes
        Then the personalize credit with amount desire and period of time is display
        And click on the option "Lo quiero"
        Then It lauch the "Credito en Efectivo" page


    Scenario: Best Offer screen(Continue with Best Offer)
        Given I have click on "Lo quiero" in the Benefit page
        And land in the Best offer page under "Recompra"
        And the Best Offer is display with amount(according to the payment capability)
        When I click on tooltip for "Pago digital"
        And the Legal information is display
        When I click on tooltip for "Pago semanal con descuento"
        And the Legal information is display
        When I click on tooltip for "Pago semanal"
        And the Legal information is display
        When click on "Lo quiero"
        Then the Summay page is display


    Scenario: Summary screen(From Personalized credit)
        Given I have land it in Summary page after clicking on "Lo quiero"
        And had personalize the credit summary details are display
        And the option to edit is under "Editar"
        And the details "Monto", "Plazo", "Pago digital", "Pago semanal con descuento", "Pago semanal"
        When Slide the "baz" button to the right
        Then It lauch the "Clave" page

    Scenario Outline: Keycode screen
        Given I have land in the Clave page after
        And I have a number path to enter 6 digits
        And the message "Ingresar tu clave para continuar"
        And the option "olvide mi clave" for those who forgot thir code
        When click to enter the code a number pad is launch
        And  enter keycode <clave>
        Then the keycode is verify
        And it will lauch the ticket page

        Examples:
            | clave  |
            | 147369 |

    Scenario: Cash Credit screen(From Best Offer)
        Given I have land it in Summary page after clicking on "Lo quiero"
        And had personalize the credit summary details are display
        And the option to edit is under "Editar"
        And the details "Monto", "Plazo", "Pago digital", "Pago semanal con descuento", "Pago semanal"
        When Slide the "baz" button to the right
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
            | 147369 '

    Scenario: Ticket screen
        Given I have provided the keycode
        And landed in ticket page with the summary of the credit
        When click on "salir"
        Then you will exit
        And receive an email

