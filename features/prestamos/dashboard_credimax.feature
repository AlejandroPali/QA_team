Feature: Dashboard_Credimax

    Scenario: Credit Dashboard
        Given I'm at the "Dinero" dashboard
        When I click at "credito"
        Then the personal credit details are display

    Scenario: Personal Credit Details screen
        Given I'm at the personal credit details page
        And the details of personal credit are display
        When I click on the tooltip of "Pago Sugerido"
        And the details are display
        And click on the "X" to close it
        When I scroll down
        And I click on "Pagar"
        Then land at the "Pagar mis creditos" page

    Scenario: Automatic Charge Activation
        Given I'm at the "Credito" dashboard
        When I click on the 3 dots "Configuracion"
        Then the slide button "Activación de Cargo Automatico" is display