Feature: Dashboard_TDC

    Scenario: Credit Dashboard with a TDC
        Given I'm in the "Dinero" dashboard
        And I have a Credit Card account
        When I click in "credito"
        Then the TDC dashboard is display
        And the Credit card movements are display


    Scenario: Credit Card Account screen
        Given the credit card account details is display
        And the option to make a payment is avaliable
        And the current transaction are displayed
        When click on the setting button
        Then land in the "Configuracion" page

    Scenario: Setting screen
        Given I'm in the "Credito" dashboard
        When I click on the 3 dots "Configuracion"
        Then information about the card are display
        And the option to "Apagar tarjeta" is display
        And the option to "Estados de Cuenta" is display
        And the "Ver NIP" is display


