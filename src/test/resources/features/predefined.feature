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
    Then I should see page title as "Search Encrypt - The Privacy Based Search Engine"
    Then element with xpath "//div[@class='col-md-12 text-center']//input[@placeholder='Search...']" should be present
    When I type "Behavior Driven Development" into element with xpath "//div[@class='col-md-12 text-center']//input[@placeholder='Search...']"
    Then I click on element using JavaScript with xpath "//div[@class='col-md-12 text-center']//i[@class='search compact']"
    Then I wait for element with xpath "//div[@id='results-list']" to be present
    Then element with xpath "//div[@id='results-list']" should contain text "Cucumber"

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
    Then element with xpath "//ul[@class='serp-list serp-list_left_yes']" should contain text "Cucumber"

  @predefined10
  Scenario: Predefined steps for Boardreader
    Given I open url "https://boardreader.com"
    Then I should see page title as "Boardreader - Forum Search Engine"
    Then element with xpath "//input[@id='title-query']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='title-query']"
    Then I wait for 2 sec
    Then I click on element using JavaScript with xpath "//button[@class='mdl-button mdl-js-button mdl-button--raised titleButton']"
    Then I wait for element with xpath "//ul[@class='mdl-list']" to be present
    Then I wait for 1 sec
    Then element with xpath "//ul[@class='mdl-list']" should contain text "Cucumber"

  @predefined11
  Scenario: Predefined steps for Ecosia
    Given I open url "https://ecosia.org"
    Then I should see page title as "Ecosia - the search engine that plants trees"
    Then element with xpath "//input[@placeholder='Search the web to plant trees...' and @name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@placeholder='Search the web to plant trees...' and @name='q']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@class='mainline-results']" to be present
    Then element with xpath "//div[@class='mainline-results']" should contain text "Cucumber"

  @predefined12
  Scenario: Amazon Item Search
    Given I open url "https://www.amazon.com/"
    Then I should see page title as "Amazon.com: Online Shopping for Electronics, Apparel, Computers, Books, DVDs & more"
    And element with xpath "//input[@id='twotabsearchtextbox']" should be present
    When I type "usb c cable" into element with xpath "//input[@id='twotabsearchtextbox']"
    Then I click on element using JavaScript with xpath "//input[@type='submit']"
    And I wait for element with xpath "//span[@class='rush-component s-latency-cf-section']//div[@class='s-result-list s-search-results sg-row']" to be present
    And element with xpath "//span[@class='rush-component s-latency-cf-section']//div[@class='s-result-list s-search-results sg-row']" should contain text "USB Type-C"
    Then I click on element with xpath "//li[@id='p_89/AmazonBasics']//i[@class='a-icon a-icon-checkbox']"
    And I wait for element with xpath "//span[@cel_widget_id='RESULT_INFO_BAR-RESULT_INFO_BAR']//span[contains(text(),'AmazonBasics')]" to be present
    
    When I click on element with xpath "//span[@class='a-dropdown-container']"
    Then I wait for element with xpath "//div[@class='a-popover-wrapper']" to be present
    And I click on element with xpath "//a[contains(text(),'Low to High')]"
    And I wait for element with xpath "//span[@class='a-button-inner']" to be present
    And element with xpath "//span[@class='a-button a-button-dropdown a-button-small']" should contain text "Price: Low to High"

  @predefined13
  Scenario: Youtube Video Search
    Given I open url "https://www.youtube.com/"
    Then I should see page title as "YouTube"
    Then element with xpath "//input[@id='search']" should be present
    When I type "Selenium Webdriver Portov Computer School" into element with xpath "//input[@id='search']"
    Then I click on element using JavaScript with xpath "//button[@id='search-icon-legacy']"
    Then I wait for element with xpath "//ytd-two-column-search-results-renderer[@class='style-scope ytd-search']" to be present
    And I wait for 1 sec
    Then element with xpath "//ytd-two-column-search-results-renderer[@class='style-scope ytd-search']" should contain text "Selenium Webdriver with Cucumber and Java - Silver Bootcamp - Session 1"
    And I click on element using JavaScript with xpath "//yt-formatted-string[@class='style-scope ytd-video-renderer'][contains(text(),' Silver Bootcamp - Session 1')]"
    And I wait for element with xpath "//h1[contains(@class,'ytd-video-primary')]" to be present
    And I wait for 10 sec