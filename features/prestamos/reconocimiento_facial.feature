Feature:

Scenario: Face recognition
        Given I'm at main of the Face recognition journey
        When I click on continue button
        And I click on continue button in Instruction screen number 1
        When I click on continue button in Instruction screen number 2
        And I click on continue button in Instruction screen number 3
        When I'm on the Face recognition screen
        And I click on continue button
        And I focus my face in the camera
        When I verify the captured face is equal to customers face
        And I click on continue in Identity Confirmed screen
        Then it will lauch the Keycode screen 