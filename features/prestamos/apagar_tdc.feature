    Feature Apagar_TDC

        Scenario: turn off TDC screen
            Given I'm on the "Configuracion" page
            And the option to"Apagar tarjeta" switch is not activated
            When click on "Apagar tarjeta" to turn off the card to make a
            purchase
            Then the message "Apagaste tu tarjeta" pop-up
            And click on "Aceptar" to close it