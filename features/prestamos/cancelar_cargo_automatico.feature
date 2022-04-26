Feature: Cancelar_Cargo_Automatico

    Scenario: Automatic Charge Cancelation
        Given I'm at the "Credito" dashboard
        When I click on the 3 dots "Configuracion"
        And the setting is display
        When I slide button "Cancelación de Cargo Automatico"
        And the alert for for confimation of the cancelation of automatic charge
        When click on "Si"
        And land at the keycode page
        When enter the keycode
        And land at the success page
        Then click on "Salir"