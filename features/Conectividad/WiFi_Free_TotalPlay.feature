Feature: Wifi Free TotalPlay

Scenario: 4_Free_access_to_the _Totalplay_WiFi_network_for_one_month

Given we are in the main dashboard
When we click on the My Connectivity button
And it must be validated that the Wi-Fi BAz screen is displayed, which contains the "See Available Wi-Fi points" button and the "Generate code" button
And press the "Generate code" button
And wifi code is generated
And press the button "Go to my wi fi networks"
And select TotalPlay Free wifi network
And enter "<generated_wifi_code>"
Then we verify that we are connected to the Total Play network

Examples:

    | generated_wifi_code | 
    |      23hk83lf       |
    |      64uj53ty       |
    |      98vi09at       |
    |      34te75jp       |
    |      85ld04ij       |
    |      02te65ln       |  