Feature: Hotspots

Scenario: 3_Identification_of_available_Totalplay_hotspots

Given we are in the main dashboard.
When we click on the My Connectivity button
And it must be validated that the Wi-Fi BAz screen is displayed, which contains the "See Available Wi-Fi points" button.
And click on the "View Available Wi-Fi Points" button.
Then it must be validated that the map is displayed with the Wi-Fi points available in a range of 5 km.