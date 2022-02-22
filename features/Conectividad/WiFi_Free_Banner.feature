Feature: Wifi Free Banner

Scenario: 5_Free_access_to_the_Totalplay_WiFi_Network 

Given we are in the main dashboard
When pressing banner of my connectivity Did you run out of internet?
And a red "<list_of_steps>" screen is displayed to connect to TotalPlay and the ""Continue" button
And press the "Continue" button
And a screen is displayed with "<mensaje_de_indicaciones>" username and password to connect to red TotalPlay
And copy username and password, press the button "Go to my Wifi Networks"
And select red ".Wifi_ClubTotalPlay"
And enter "<user>" and "<password>"
Then we verify that we are connected to the ".Wifi_ClubTotalPlay" network.

Examples:
    | list_of_steps | 
    | Los pasos para conectarte son:
      1. Ubica un negocio con el señalamiento de Wi Fi baz gratis.
      2. Copia tu usuario y contraseña.
      3. Entra a la configuración de tu teléfono y ubica las redes Wi Fi.
      4. Busca la red llamada ""Club Totalplay"".
      5. Ingresa los datos proporcionados por la App.
      6. ¡Listo! Ya puedes navegar. |
    
    |     user     |
    |  0106485185  |

    |   password   |
    | Sup3rBaz123  |