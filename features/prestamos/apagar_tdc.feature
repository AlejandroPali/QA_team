Feature: Apagar_TDC

    Scenario: turn off TDC screen
        Given I'm at the "Configuracion" page
        And the option to"Apagar tarjeta" switch is not activated
        When I click at "Apagar tarjeta" to turn off the card to make a
        purchase
        Then the message "Apagaste tu tarjeta" pop-up
        And I click at "Aceptar" to close it