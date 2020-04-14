@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

#Homework 1
  @predefined2
  Scenario: Predefined steps for Bing
    Given I open url "https://bing.com"
    Then I should see page title as "Bing"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//input[@id='sb_form_go' and  @type='submit']"
    Then I wait for element with xpath "//ol[@id='b_results']" to be present
    Then element with xpath "//ol[@id='b_results']" should contain text "Cucumber"

  @predefined3
  Scenario: Predefined steps for Duckduckgo
    Given I open url "https://duckduckgo.com"
    Then I should see page title as "DuckDuckGo — Privacy, simplified."
    Then element with xpath "//input[@id='search_form_input_homepage']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='search_form_input_homepage']"
    Then I click on element using JavaScript with xpath "//input[@id='search_button_homepage' and @type='submit']"
    Then I wait for element with xpath "//div[@id='links' and @class='results js-results']" to be present
    Then element with xpath "//div[@id='links' and @class='results js-results']" should contain text "Cucumber"

  @predefined4
  Scenario: Predefined steps for Yahoo
    Given I open url "https://yahoo.com"
    Then I should see page title as "Yahoo"
    Then element with xpath "//input[@id='header-search-input']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='header-search-input']"
    Then I click on element using JavaScript with xpath "//button[@id='header-desktop-search-button' and @type='submit']"
    Then I wait for element with xpath "//div[@id='main']" to be present
    Then element with xpath "//div[@id='main']" should contain text "Cucumber"

  @predefined5
  Scenario: Predefined steps for Gibiru
    Given I open url "https://gibiru.com"
    Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    Then element with xpath "//input[@id='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='q']"
    Then I click on element using JavaScript with xpath "//button[@id='button-addon2' and @type='submit']"
    Then I wait for element with xpath "//div[@id='___gcse_0']" to be present
    Then element with xpath "//div[@id='___gcse_0']" should contain text "Cucumber"

  @predefined6
  Scenario: Predefined steps for Swisscows
    Given I open url "https://swisscows.com"
    Then I should see page title as "Swisscows the alternative, data secure search engine."
    Then element with xpath "//input[@name='query']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='query']"
    Then I click on element using JavaScript with xpath "//button[@class='search-submit']"
    Then I wait for element with xpath "//div[@class='web-results']" to be present
    #Then I wait for 1 sec
    And I wait for element with xpath "//article" to be present
    Then element with xpath "//div[@class='web-results']" should contain text "Cucumber"

  @predefined7
  Scenario: Predefined steps for SearchEncrypt
    Given I open url "https://searchencrypt.com"
    #Then I should see page title as "Search Encrypt - The Privacy Based Search Engine"
    Then I should see page title contains "Search Encrypt"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    #Then I wait for 3 sec
    Then I wait for element with xpath "//section[@class='serp__results container']" to be present
    #Then I wait for 3 sec
    Then element with xpath "//section[@class='serp__results container']" should contain text "Cucumber"

  @predefined8
  Scenario: Predefined steps for Startpage
    Given I open url "https://startpage.com"
    Then I should see page title as "Startpage.com - The world's most private search engine"
    Then element with xpath "//input[@id='query']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='query']"
    Then I click on element using JavaScript with xpath "//button[@class='search-form__button']"
    Then I wait for element with xpath "//div[@class='mainline-results mainline-results__web']" to be present
    Then I wait for 1 sec
    Then element with xpath "//div[@class='mainline-results mainline-results__web']" should contain text "Cucumber"

  @predefined9
  Scenario: Predefined steps for Yandex
    Given I open url "https://yandex.com"
    Then I should see page title as "Yandex"
    Then element with xpath "//input[@id='text']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='text']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//ul[@class='serp-list serp-list_left_yes']" to be present
    Then element with xpath "//ul[@class='serp-list serp-list_left_yes']" should contain text "TDD"

  @predefined10
  Scenario: Predefined steps for Boardreader
    Given I open url "https://boardreader.com"
    Then I should see page title as "Boardreader - Forum Search Engine"
    Then element with xpath "//input[@id='title-query']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='title-query']"
    Then I wait for 2 sec
    Then I click on element using JavaScript with xpath "//button[@class='mdl-button mdl-js-button mdl-button--raised titleButton']"
    Then I wait for element with xpath "//div[@class='mdl-cell mdl-cell--12-col searchResultsBlock']" to be present
    Then I wait for 1 sec
    Then element with xpath "//div[@class='mdl-cell mdl-cell--12-col searchResultsBlock']" should contain text "Test Driven Development"

  @predefined11
  Scenario: Predefined steps for Ecosia
    Given I open url "https://ecosia.org"
    Then I should see page title as "Ecosia - the search engine that plants trees"
    Then element with xpath "//input[@placeholder='Search the web to plant trees...' and @name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@placeholder='Search the web to plant trees...' and @name='q']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@class='mainline-results']" to be present
    Then element with xpath "//div[@class='mainline-results']" should contain text "Cucumber"

#Homework2
  @predefined12
  Scenario: Amazon Item Search
    Given I open url "https://www.amazon.com/"
    Then I should see page title as "Amazon.com: Online Shopping for Electronics, Apparel, Computers, Books, DVDs & more"
    And element with xpath "//input[@id='twotabsearchtextbox']" should be present
    When I type "usb c cable" into element with xpath "//input[@id='twotabsearchtextbox']"
    Then I click on element using JavaScript with xpath "//input[@type='submit']"
    #And I wait for element with xpath "//span[@class='rush-component s-latency-cf-section']//div[@class='s-result-list s-search-results sg-row']" to be present
    And element with xpath "//span[contains(text(),'results for')]/.." should contain text "usb c cable"
    Then I click on element with xpath "//li[@id='p_89/AmazonBasics']//i[@class='a-icon a-icon-checkbox']"
    And I wait for element with xpath "//span[@cel_widget_id='RESULT_INFO_BAR-RESULT_INFO_BAR']//span[contains(text(),'AmazonBasics')]" to be present
    
    Given I click on element with xpath "//span[@class='a-dropdown-container']"
    And I wait for 2 sec
    #And I wait for element with xpath "//div[@class='a-popover-wrapper']" to be present
    Then I click on element with xpath "//a[contains(text(),'Low to High')]"
    And I wait for element with xpath "//span[@class='a-button-inner']" to be present
    And element with xpath "//span[@class='a-button a-button-dropdown a-button-small']" should contain text "Price: Low to High"

  @predefined13
  Scenario: Youtube Video Search
    Given I open url "https://www.youtube.com/"
    Then I should see page title as "YouTube"
    And element with xpath "//input[@id='search']" should be present
    When I type "Selenium Webdriver Portov Computer School" into element with xpath "//input[@id='search']"
    Then I click on element using JavaScript with xpath "//button[@id='search-icon-legacy']"
    And I wait for element with xpath "//ytd-two-column-search-results-renderer[@class='style-scope ytd-search']" to be present
    And I wait for 1 sec
    Then element with xpath "//ytd-two-column-search-results-renderer[@class='style-scope ytd-search']" should contain text "Selenium Webdriver with Cucumber and Java - Silver Bootcamp - Session 1"
    When I click on element using JavaScript with xpath "//yt-formatted-string[@class='style-scope ytd-video-renderer'][contains(text(),' Silver Bootcamp - Session 1')]"
    Then I wait for element with xpath "//h1[contains(@class,'ytd-video-primary')]" to be present
    And I wait for 10 sec

#Homework3
  @predefined14 @quote
  Scenario: Validate responsive UI behavior
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    When  I resize window to 1280 and 1024
    Then element with xpath "//b[@id='location']" should be displayed

    When I resize window to 1000 and 1024
    Then element with xpath "//b[@id='location']" should be displayed

    When I resize window to 400 and 1024
    Then element with xpath "//b[@id='location']" should not be displayed
    Then I resize window to 1280 and 1024

  @predefined15 @quote
  Scenario: Fill out and validate “Username” field
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    When I type "A" into element with xpath "//input[@name='username']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should have text as "Please enter at least 2 characters."
    Then I clear element with xpath "//input[@name='username']"

    When I type "AA" into element with xpath "//input[@name='username']"
    Then element with xpath "//label[@id='username-error']" should not be displayed

  @predefined16 @quote
  Scenario: Validate “Email” field behavior
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    When I type "emailtest" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should have text as "Please enter a valid email address."
    Then I clear element with xpath "//input[@name='email']"

    When I type "emailtest@" into element with xpath "//input[@name='email']"
    Then element with xpath "//label[@id='email-error']" should have text as "Please enter a valid email address."
    Then I clear element with xpath "//input[@name='email']"

    When I type "emailtest@test.com" into element with xpath "//input[@name='email']"
    Then element with xpath "//label[@id='email-error']" should not be displayed

  @predefined17 @quote
  Scenario: Fill out and validate “Password” set of fields /Confirm Password is disabled if Password field is empty
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    When I mouse over element with xpath "//input[@id='confirmPassword']"
    Then element with xpath "//input[@id='confirmPassword']" should be disabled

    When I type "a" into element with xpath "//input[@id='password']"
    Then element with xpath "//input[@id='confirmPassword']" should be enabled
    Then I clear element with xpath "//input[@id='password']"

    When I type "aaaa" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='password-error']" should have text as "Please enter at least 5 characters."

    When I type "aaaaa" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='password-error']" should not be displayed

  @predefined18 @quote
  Scenario: Validate “Name” field behavior
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    When I click on element with xpath "//input[@id='name']"
    Then element with xpath "//div[@aria-describedby='nameDialog']" should be displayed
    And I type "FirstN" into element with xpath "//input[@id='firstName']"
    And I type "MiddleN" into element with xpath "//input[@id='middleName']"
    And I type "LastN" into element with xpath "//input[@id='lastName']"
    When I click on element with xpath "//span[contains(text(),'Save')]"
    Then element with xpath "//input[@id='name' and @value='FirstN MiddleN LastN']" should be present

  @predefined19 @quote
  Scenario: Validate that Accepting Privacy Policy is required to submit the form, then check the field
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    When I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should be displayed
    When I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should not be displayed

  @predefined20 @quote #optional
  Scenario: Try entering the following non-required fields in the order: Phone Number; Country of Origin; Gender; Allowed to Contact?; Address; Car Make; 3rd party agreement acceptance; Date of Birth
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then I type "999-999999" into element with xpath "//input[@name='phone']"
    And I click on element with xpath "//select[@name='countryOfOrigin']"
    Then I click on element with xpath "//option[contains(text(),'Italy')]"
    And I click on element with xpath "//input[@type='radio' and @value='male']"
    And I click on element with xpath "//input[@name='allowedToContact']"
    And I type "123 Test Street" into element with xpath "//textarea[@id='address']"
    And I click on element with xpath "//option[contains(text(),'BMW')]"
    Then I click on element with xpath "//button[@id='thirdPartyButton']"
    And I accept alert
    Then I type "01/01/1990" into element with xpath "//input[@id='dateOfBirth']"

  @predefined21 @quote
  Scenario: Submit the form and verify the data / entered fields values are present on the page / Validate that password is not displayed
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"

    Given I type "testuser1" into element with xpath "//input[@name='username']"
    Then I type "test.user@gmail.com" into element with xpath "//input[@name='email']"
    And I type "password" into element with xpath "//input[@id='password']"
    And I type "password" into element with xpath "//input[@id='confirmPassword']"
    When I click on element with xpath "//input[@id='name']"
    Then element with xpath "//div[@aria-describedby='nameDialog']" should be displayed
    And I type "FirstN" into element with xpath "//input[@id='firstName']"
    And I type "MiddleN" into element with xpath "//input[@id='middleName']"
    And I type "LastN" into element with xpath "//input[@id='lastName']"
    When I click on element with xpath "//span[contains(text(),'Save')]"
    Then element with xpath "//input[@id='name' and @value='FirstN MiddleN LastN']" should be present
    Then I type "999-999999" into element with xpath "//input[@name='phone']"
    And I click on element with xpath "//select[@name='countryOfOrigin']"
    And I click on element with xpath "//option[contains(text(),'Italy')]"
    And I click on element with xpath "//input[@type='radio' and @value='male']"
    And I click on element with xpath "//input[@name='allowedToContact']"
    And I type "123 Test Street" into element with xpath "//textarea[@id='address']"
    And I click on element with xpath "//option[contains(text(),'BMW')]"
    When I click on element with xpath "//button[@id='thirdPartyButton']"
    Then I accept alert
    And I type "01/01/1990" into element with xpath "//input[@id='dateOfBirth']"
    And I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    
    When I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//legend[@class='applicationResult']" should have text as "Submitted Application"
    Then element with xpath "//div[@id='quotePageResult']" should contain text "test.user@gmail.com"
    Then element with xpath "//div[@id='quotePageResult']" should contain text "999-999999"
    #we can put each element like below or one general element that contains all the other elements like above
    And element with xpath "//b[@name='firstName']" should have text as "FirstN"
    And element with xpath "//b[@name='middleName']" should have text as "MiddleN"
    And element with xpath "//b[@name='lastName']" should have text as "LastN"
    And element with xpath "//b[@name='name']" should have text as "FirstN MiddleN LastN"
    And element with xpath "//b[@name='location']" should have text as "Los Altos, CA 94022"
    And element with xpath "//b[@name='password']" should have text as "[entered]"
    And element with xpath "//button[@id='return']" should be present

  @predefined21 @quote #extra case
  Scenario: Date of birth (using clicking, don't type into the field)
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    When I click on element with xpath "//input[@id='dateOfBirth']"
    Then element with xpath "//div[@id='ui-datepicker-div']" should be present
    And I click on element with xpath "//select[@class='ui-datepicker-month']/option[text()='Jan']"
    #or we can put //select[@*='selectMonth']option[@value='00']
    And I click on element with xpath "//select[@class='ui-datepicker-year']/option[text()='1990']"
    #or we can put //select[@*='selectYear']/option[@value='1990']
    And I click on element with xpath "//td[@data-handler='selectDay']/a[text()='1']"
    #or we can put //td[@*='selectDay']/a[text()='1']
    Then element with xpath "//input[@id='dateOfBirth']" should have attribute "value" as "01/01/1990"







