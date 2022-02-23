Feature: Nerarby me

    Scenario: 1_Create_first_advertisement
        Given we are in the principal board
        When select My advertisement option
        And select Create new option
        Then we enter the "<name>"
        And we click in Continue
