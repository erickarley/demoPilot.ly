Feature: Pilotly Study Management Login Tests
    As a Software Developer in Test
    I want to test if the Study Management App authentication feature works as expected 

#Login Testcases
    Scenario: Example of how to code a basic Login with wrong credentials
        Given I open the url "https://study-intake-git-dev-pilotly.vercel.app/login"
        And   I clear the inputfield "#email"
        When  I add "testuser1@example.com" to the inputfield "#email"
        And   I clear the inputfield "#password"
        And   I add "WrongPassword" to the inputfield "#password"
        And   I click on the button "//button"
        And   I pause for 10000ms
        Then  I expect that element ".alert__message" is displayed

    Scenario: Login and Logout with valid credentials
        Given I open the url "https://study-intake-git-dev-pilotly.vercel.app/login"
        And   I clear the inputfield "#email"
        When  I add "testuser1@example.com" to the inputfield "#email"
        And   I clear the inputfield "#password"
        And   I add "sample1@test2" to the inputfield "#password"
        And   I click on the button "//button"
        And   I pause for 10000ms
        Then  I expect that element "//h1[.='Study Requests']" is displayed
        When  I click on the element "//span[.='Logout']"
        Then  I expect that element "//h1[.='Log in to Pilotly']" is displayed
