Feature: Encender_TDC

        Scenario: turn on TDC screen
            Given I'm on the "Configuracion" page
            And the option to"Apagar tarjeta" switch is activated 
            When click on "Apagar tarjeta" to turn on the card to make a
            purchase
            Then the message "Encendiste tu tarjeta" pop-up
            And click on "Aceptar" to close it