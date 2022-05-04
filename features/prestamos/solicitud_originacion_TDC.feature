Feature: Originacion_TDC
    #Solicitud de TDC
    Scenario: Banner at main screen
        Given Im at the main screen
        And I have a suitable client for "TDC"
        When I scroll down
        And the product banner is display
        When click at the banner
        Then i should be at the Benefit page

    Scenario: Benefit screen
        Given I'm at the Benefit screen
        When I click at button continue
        And the card contract has been accepted
        Then i should be at the identification form

    Scenario Outline: identification form screen
        Given I'm at the identification form
        When I introduce my credential number (IDMEX) to <credential>
        And credential is equals to ten digits
        When I click at continue button
        Then i should be at the personal information screen

        Examples:
            | credential |
            | 1234567890 |

    Scenario: identification form screen
        Given I'm at the identification form
        When i don't know my IDMEX
        And i click at "No encuentro este dato"
        Then i should be at the "Clave de elector" page

    Scenario Outline:   "Clave de elector" screen
        Given I'm at the "Clave de elector" screen
        When I introduce my elector key to <elector>
        And elector is equal to 18 digits
        When i click at continue button
        Then i should be at the "año de registro" screen
        Examples:
            | elector            |
            | 1234567890asdflnl1 |


    Scenario Outline:  "Año de registro" screen
        Given I'm at the "Año de registro" screen
        When I introduce my registration year  to <year>
        And year is equal to 6 digits
        When i click at continue button
        Then i should be at the "numero de identificación" screen
        Examples:
            | year |
            | 2022 |

    Scenario Outline:  "numero de identificación" screen
        Given I'm at the "numero de identificación" screen
        When I introduce my identification number  to <identification>
        And year is equal to 13 digits
        When i click at continue button
        Then i should be at the personal information screen
        Examples:
            | identification |
            | 12345qwert123  |

    Scenario Outline: personal information screen
        Given I'm at the personal information screen
        When i select some kind of housing at the select box
        And i choose time at home on the five options
        And i choose civil status at the select box
        And i  introduce my email  to <email>
        When i click at continue button
        Then i should be at the work information screen
        Examples:
            | email                 |
            | prueba@elektra.com.mx |

    Scenario Outline: work information screen
        Given i'm at the work information screen
        When I choose some occupation at the select box
        And I introduce my monthly income to <income>
        When i choose "i can't check income"
        And i choose some check mode
        When i click at  continue button
        Then i should be at the address data screen
        Examples:
            | income |
            | 5000   |

    Scenario: Address data screen
        Given I'm at the address data screen
        When I click at edit button
        Then i should be at the change address screen

    Scenario Outline: change address screen
        Given I'm at the chage address page
        When I introduce "codigo postal" to <cp>
        And I introduce "calle" to <calle>
        And I introduce "No Exterior" to <exterior>
        And I introduce the optional attribute "No Interior" to <interior>
        And I choose "colonia" at the select box
        When I click at save button
        Then it will redirect me to the address data screen
        Examples:
            | cp    | calle   | exterior | interior |
            | 55069 | por ahí | 45       |          |
            | 55069 | por ahí | 45       | 12       |

    Scenario Outline: Change Address data
        Given I'm at the address data screen
        When I introduce "entre calle 1" to <calleUno>
        And I introduce "entre calle 2" to <calleDos>
        And I introduce "Referencias" to <referencia>
        When I click at continue button
        Then i should be at the personal references screen
        Examples:
            | calleUno     | CalleDos | referencia           |
            | hermenegildo | Galeana  | hay una puerta negra |

    Scenario Outline: personal references screen
        Given I'm at the personal references screen
        When I introduce name of first reference to <name>
        And I introduce  first surname of first reference to <surname>
        And I introduce the optional attribute second surname of first reference to <SecondSurname>
        And I choose reference kinship of first reference at the select box
        And I introduce phone number of first reference to <phone>
        And I introduce name of second reference to <nameS>
        And I introduce  first surname of second reference to <surnameS>
        And I introduce the optional attribute second surname of second reference to <SecondSurnameS>
        And I choose reference kinship of second reference at the select box
        And I introduce phone number of second reference to <phoneS>
        When I click at Send button
        Then I should be at the Success screen
        Examples:
            | name | surname  | SecondSurname | phone      | nameS | surnameS | SecondSurnameS | phoneS     |
            | alex | palizada | sanchez       | 5556575859 | yeni  | ramos    | olialgo        | 5657585960 |

    Scenario: Success screen
        Given I'm at the Success screen
        And I can see the message "Tus datos fueron registrados"
        And the message "Estamos revisando la solicitud..."
        When I click at exit button
        Then I should be at the main screen
        And i receive a push notification for continue solicitude


