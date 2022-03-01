Feature: Dashboard_TDC

    Background: Dashboard TDC

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
            

        Scenario: View NIP screen on setting
            Given I land it in the "Configuracion" page
            And the "Ver NIP" is display
            When click on arrow in "Ver NIP"
            Then is routered to "Ver NIP" page


        Scenario Outline: CVV screen
            Given I have landed in "Activa tu tarjeta" page
            And the "Ingresa el CVV" is display
            When click on the field to enter the CVV code to <cvv>
            And the number pad is display to enter the number
            And click on "Continuar"
            And cvv is equal to the card
            And cvv is equal to 3 digits
            Then it lauch the "Clave" page
                
        Examples:
        |cvv|
        |123|

        Scenario Outline: Keycode screen

            Given I have land in the "Clave" page after 
            And I have a number path to enter 6 digits
            And the message " Ingresar tu clave para continuar"
            and the option "olvide mi clave" for those who forgot thir code
            When click to enter the code a number pad is launch
            And  enter keycode <clave>
            Then the keycode is verify
            And it will lauch the "Ver NIP" page 

        Examples:
        |clave|
        |147369|


        Scenario: View NIP screen
            Given I landed in "Ver NIP" page
            And the NIP is display
            When the ime to see the NIP has ran out
            And click on "Ver nuevamente"
            Then the NIP will appear again
