Feature: Ofertas de Originacion Preaprobados

    #Inmediato
    Scenario: Push notification at main screen
        Given I'm at the main screen
        And I have a suitable customer for some efective credit
        And I have capability payment
        And not be an employee of "Grupo Salinas"
        When I receive a Push notification
        And The text at notification is "Tus datos han sido validados. Continua con tu solicitud..."
        And I click at notification
        Then I should be at Best Offer screen

    Scenario: Best Offer screen
        Given I'm at the Benefit page
        And land at the Best offer page under "Preaprobados"
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
        Given I have click at personalize credit from Best offer page
        And it display the best offer amount and time frame to pay
        And display the option to modify the amount
        And modify the period of time to pay
        When the amount has been selected from "¿Cuanto dinero necesitas?"
        And I scroll to select the amount I can see the amount changing at the top of the screen till I have reach the amount desire
        And the "Pago desde baz" changes too
        When I select the period of time from "¿En cuanto tiempo quieres pagarlo?"
        And I discrease the amount of weeks the amount at "Paga desde baz" change or if amount of week increases the amount at "Paga desde baz" changes
        And the personalize credit with amount desire and the period of time  is display
        When i click at the option "Lo quiero"
        Then i should be at the Summary page


    Scenario: Best Offer screen(Continue with Best Offer)
        Given I have click at "Lo quiero" at the Benefit page
        And land at the Best offer page under "Preaprobado"
        And the Best Offer is display with amount(according to the payment capability)
        When I click at tooltip for "Pago digital"
        And the Legal information is display
        When I click at tooltip for "Pago semanal con descuento"
        And the Legal information is display
        When I click at tooltip for "Pago semanal"
        And the Legal information is display
        When I click at "Lo quiero"
        Then the Summary page is display

    Scenario: Summary screen(From Personalized credit)
        Given I have land it at Summary page after clicking at "Lo quiero"
        And had personalize the credit summary details are display
        And the option to edit is under "Editar"
        And the details "Monto", "Plazo", "Pago digital", "Pago semanal con descuento" and "Pago semanal"
        When I Slide the "baz" button to the right
        Then it will lauch the Keycode screen


    Scenario Outline: Keycode screen
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
        Given I have provided the keycode
        And landed at ticket page with the summary of the credit
        When I click at exit button
        Then I will exit
        And receive an email
        And I receive a Push notification



    #Visita

    Scenario: Push notification at main screen
        Given I'm at the main screen
        And I have a suitable customer for some efective credit
        And I have capability payment
        And not be an employee of "Grupo Salinas"
        When I receive a Push notification
        And The text at notification is "Tus datos han sido validados. Continua con tu solicitud..."
        And I click at notification
        Then I should be at Best Offer screen

    Scenario: Best Offer screen
        Given I'm at the Benefit page
        And land at the Best offer page under "Preaprobados"
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
        Given I have click at personalize credit from Best offer page
        And it display the best offer amount and time frame to pay
        And display the option to modify the amount
        And modify the period of time to pay
        When the amount has been selected from "¿Cuanto dinero necesitas?"
        And I scroll to select the amount I can see the amount changing at the top of the screen till I have reach the amount desire
        And the "Pago desde baz" changes too
        When I select the period of time from "¿En cuanto tiempo quieres pagarlo?"
        And I discrease the amount of weeks the amount at "Paga desde baz" change or if amount of week increases the amount at "Paga desde baz" changes
        And the personalize credit with amount desire and the period of time  is display
        When i  click at the option "Lo quiero"
        Then i should be at the Summary page


    Scenario: Best Offer screen(Continue with Best Offer)
        Given I have click at "Lo quiero" at the Benefit page
        And land at the Best offer page under "Preaprobado"
        And the Best Offer is display with amount(according to the payment capability)
        When I click at tooltip for "Pago digital"
        And the Legal information is display
        When I click at tooltip for "Pago semanal con descuento"
        And the Legal information is display
        When I click at tooltip for "Pago semanal"
        And the Legal information is display
        When I click at "Lo quiero"
        Then the Summary page is display

    Scenario: Summary screen(From Personalized credit)
        Given I have land it at Summary page after clicking at "Lo quiero"
        And had personalize the credit summary details are display
        And the option to edit is under "Editar"
        And the details "Monto", "Plazo", "Pago digital", "Pago semanal con descuento" and "Pago semanal"
        When I Slide the "baz" button to the right
        Then it will lauch the Keycode screen


    Scenario Outline: Keycode screen
        Given I have land at the Clave page after
        And I have a number path to enter 6 digits
        And the message " Ingresar tu clave para continuar"
        And the option "olvide mi clave" for those who forgot thir code
        When I click to enter the code a number pad is launch
        And I introduce the keycode to <clave>
        Then the keycode is verify
        And it will lauch the verify Identity journey

        Examples:
            | clave  |
            | 147369 |

    Scenario: verify Identity screen
        Given I'm at verify Identity screen
        When i click at "Llamar a un asesor" button
        Then I should be at Call an advisor screen

    Scenario: verify Identity screen
        Given I'm at verify Identity screen
        When i click at "Recibir llamada" button
        Then I should be at Receive call screen

    Scenario: Call an advisor screen
        Given I'm at the Call an advisor screen
        When I click at continue button
        And A modal are display
        When I click at confirm button
        Then I should be at telephone dialer
        And I Call an advisor

    Scenario: Receive call screen
        Given I'm at the Receive call screen
        When I Receive call
        Then I verify my Identity

    Scenario: release credit
        Given I'm at main screen
        When I receive a Push notification
        And The text at notification is " Liberar crédito..."
        When I click at notification
        Then i should be at "release credit screen"

    Scenario: release credit screen
        Given I'm at the release credit screen
        When I click at release button
        Then Then it will lauch the Keycode screen


    Scenario Outline: Keycode screen
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
        Given I have provided the keycode
        And landed at ticket page with the summary of the credit
        When click at "salir"
        Then I will exit
        And receive an email
        And I receive a Push notification

