Feature: Originacion_TDC

    #Inmediato
    Scenario: Push notification at main screen
        Given I'm at the main screen
        And I have a suitable customer for "TDC"
        And I have capability payment
        And not be an employee of "Grupo Salinas"
        When I receive a Push notification
        And The text at notification is "Tus datos han sido validados. Continua con tu solicitud..."
        And I click at notification
        Then I should be at Best Offer screen

    Scenario: Best Offer screen (edit address)
        Given I'm at the Best Offer page
        And the Best Offer is display with amount(according to the payment capability)
        When I click at edit button
        Then i should be at change address screen

    Scenario Outline: change address screen
        Given I'm at the chage address page
        When I introduce "codigo postal" to <cp>
        And I introduce "calle" to <calle>
        And I introduce "No Exterior" to <exterior>
        And I introduce the optional attribute "No Interior" to <interior>
        And I choose "colonia" at the select box
        When I click at save button
        Then it will redirect me to the Best offer screen
        Examples:
            | cp    | calle   | exterior | interior |
            | 55069 | por ahí | 45       |          |
            | 55069 | por ahí | 45       | 12       |

    Scenario: Best Offer screen
        Given I'm at the Best Offer page
        And the Best Offer is display with amount(according to the payment capability)
        When I click at continue button
        Then i should be at summary screen

    Scenario: Summary screen(From Personalized credit)
        Given I'm at the credit summary
        And had personalize the credit summary details are display
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
        And I receive an email
        And I receive a Push notification

    #Visita

    Scenario: Push notification at main screen
        Given I'm at the main screen
        And I have a suitable customer for "TDC"
        And I have capability payment
        And not be an employee of "Grupo Salinas"
        When I receive a Push notification
        And The text at notification is "Tus datos han sido validados. Continua con tu solicitud..."
        And I click at notification
        Then I should be at Best Offer screen

    Scenario: Best Offer screen (verify Identity)
        Given I'm at the Best Offer page
        And the Best Offer is display with amount(according to the payment capability)
        When i click at "Llamar a un asesor" button
        Then I should be at Call an advisor screen

    Scenario: Best Offer screen (verify Identity)
        Given I'm at the Best Offer page
        And the Best Offer is display with amount(according to the payment capability)
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

    Scenario: Push notification at main screen
        Given I'm at the main screen
        And I have a suitable customer for "TDC"
        And I have capability payment
        And not be an employee of "Grupo Salinas"
        When I receive a Push notification
        And The text at notification is "Tus datos han sido validados. Continua con tu solicitud..."
        And I click at notification
        Then I should be at Best Offer screen

    Scenario: Best Offer screen (edit address)
        Given I'm at the Best Offer page
        And the Best Offer is display with amount(according to the payment capability)
        When I click at edit button
        Then i should be at change address screen

    Scenario Outline: change address screen
        Given I'm at the chage address page
        When I introduce "codigo postal" to <cp>
        And I introduce "calle" to <calle>
        And I introduce "No Exterior" to <exterior>
        And I introduce the optional attribute "No Interior" to <interior>
        And I choose "colonia" at the select box
        When I click at save button
        Then it will redirect me to the Best offer screen
        Examples:
            | cp    | calle   | exterior | interior |
            | 55069 | por ahí | 45       |          |
            | 55069 | por ahí | 45       | 12       |

    Scenario: Best Offer screen
        Given I'm at the Best Offer page
        And the Best Offer is display with amount(according to the payment capability)
        When I click at continue button
        Then i should be at summary screen

    Scenario: Summary screen(From Personalized credit)
        Given I'm at the credit summary
        And had personalize the credit summary details are display
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
        And I receive an email
        And I receive a Push notification

