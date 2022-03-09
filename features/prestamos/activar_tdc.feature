Feature: Activar_TDC

    Background: Activación de TDC

        Scenario: Setting screen (Activate Your Card)
            Given I land it in the "Configuracion" page
            And the "Activar tu tarjeta" is display
            When click on arrow in "Activar tu tarjeta"
            Then is routered to "Activa tu tarjeta" page


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
                | cvv |
                | 103 |


            Scenario Outline: Keycode screen

            Given I have land in the "Clave" page after
            And I have a number path to enter 6 digits
            And the message " Ingresar tu clave para continuar"
            And the option "olvide mi clave" for those who forgot thir code
            When click to enter the code a number pad is launch
            And  enter keycode <clave>
            Then the keycode is verify
            And it will lauch the Done page

            Examples:
                | clave  |
                | 147369 |


        Scenario: Done screen
            Given I routered to Done page
            And the "Tu Tarjeta de credito baz ya esta activa" message
            And the explanation on how to consult the NIP from setting
            And the explanation on how to change your NIP
            When click on "Ver NIP"
            Then it lauch the "Clave" page



            Scenario Outline: Second Keycode screen

            Given I have land in the "Clave" page after
            And I have a number path to enter 6 digits
            And the message " Ingresar tu clave para continuar"
            And the option "olvide mi clave" for those who forgot thir code
            When click to enter the code a number pad is launch
            And  enter keycode <clave>
            Then the keycode is verify
            And it will lauch the "Ver NIP" page

            Examples:
                | clave  |
                | 147369 |


        Scenario: View NIP screen
            Given I landed in "Ver NIP" page
            And the NIP is display
            When the ime to see the NIP has ran out
            And click on "Ver nuevamente"
            Then the NIP will appear again


