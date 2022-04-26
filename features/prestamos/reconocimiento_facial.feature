Feature:

Scenario: Face recognition
        Given I'm at main of the Face recognition journey
        When I click at continue button
        And I click at continue button at Instruction screen number 1
        When I click at continue button at Instruction screen number 2
        And I click at continue button at Instruction screen number 3
        When I'm at the Face recognition screen
        And I click at continue button
        And I focus my face at the camera
        When I verify the captured face is equal to customers face
        And I click at continue at Identity Confirmed screen
        Then it will lauch the Keycode screen 