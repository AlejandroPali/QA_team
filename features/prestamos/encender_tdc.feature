Feature: Encender_TDC

    Scenario: turn at TDC screen
        Given I'm at the "Configuracion" page
        And the option to"Apagar tarjeta" switch is activated
        When I click at "Apagar tarjeta" to turn at the card to make a
        purchase
        Then the message "Encendiste tu tarjeta" pop-up
        And I click at "Aceptar" to close it