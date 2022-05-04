Feature: Estado_Cuenta

    Scenario: Setting screen
        Given I'm at the "Configuracion" page
        When I click at "Estado de cuenta"
        Then i should be at the "Estado de cuenta" page

    Scenario: Statement Account screen
        Given I'm at the "Estado de cuenta" page
        And the option to select thelast 3 statements are avaliable
        When i'm select some statement
        And  click at continuar
        Then i should be at the the success page
        And i receive an email
