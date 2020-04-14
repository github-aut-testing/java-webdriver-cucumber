package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.Keys;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Set;

import static org.assertj.core.api.Assertions.assertThat;
import static org.openqa.selenium.Keys.ENTER;
import static support.TestContext.getDriver;

public class MarketStepDefs {

    @Given("I go to {string} page")
    public void iGoToPage(String page) {
        switch (page.toLowerCase()) {
            case "google":
                getDriver().get("https://www.google.com/");
                break;
            case "quote":
                getDriver().get("https://skryabin.com/market/quote.html");
                break;
            case "yahoo":
                getDriver().get("https://www.yahoo.com/");
                break;
            case "amazon":
                getDriver().get("https://www.amazon.com/");
                break;
            case "ebay":
                getDriver().get("https://www.ebay.com/");
                break;
            default:
                //System.out.println("Not recognized page: " + page);
                //'throw' exception will make the case to actually fail
                throw new RuntimeException("Not recognized site: " + page);
        }
    }

    @And("I print page details in console")
    public void iPrintPageDetailsInConsole() {
       String currentUrl = getDriver().getCurrentUrl();
       String Title = getDriver().getTitle();
       Set<String> WindowHandles = getDriver().getWindowHandles();
//       String Source = getDriver().getPageSource();
       System.out.println("URL: " + currentUrl);
       System.out.println("Title: " + Title);
       System.out.println("WindowHandles: " + WindowHandles);
 //      System.out.println("Source: " + Source);
    }

    @And("I go back and forward, then refresh the page")
    public void iGoBackAndForwardThenRefreshThePage() {
        getDriver().navigate().back();
        getDriver().navigate().forward();
        getDriver().navigate().refresh();
    }

    @And("I change resolution to {string}")
    public void iChangeResolutionTo(String resolution) throws InterruptedException {
        switch (resolution) {
            case "phone":
                getDriver().manage().window().setSize(new Dimension(400, 768));
                Thread.sleep(3000);
            break;
            case "desktop":
                getDriver().manage().window().setSize(new Dimension(1024, 768));
                Thread.sleep(3000);
                break;
            case "full screen":
                getDriver().manage().window().fullscreen();
                Thread.sleep(3000);
                break;
            case "maximize":
                getDriver().manage().window().maximize();
                Thread.sleep(3000);
                break;
            default:
                throw new RuntimeException(resolution + " - Resolution not supported!");
        }
    }

    @When("I fill out required fields")
    public void iFillOutRequiredFields() {
        getDriver().findElement(By.xpath("//input[@name='username']")).sendKeys("newuser01");
        getDriver().findElement(By.xpath("//input[@name='email']")).sendKeys("newuser01@gmail.com");
        getDriver().findElement(By.xpath("//input[@id='password']")).sendKeys("Password1!");
        getDriver().findElement(By.xpath("//input[@id='confirmPassword']")).sendKeys("Password1!");
        getDriver().findElement(By.xpath("//input[@id='name']")).click();
        getDriver().findElement(By.xpath("//input[@id='firstName']")).sendKeys("FirstN");
        getDriver().findElement(By.xpath("//input[@id='middleName']")).sendKeys("MiddleN");
        getDriver().findElement(By.xpath("//input[@id='lastName']")).sendKeys("LastN");
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
        getDriver().findElement(By.xpath("//input[@name='agreedToPrivacyPolicy']")).click();
    }

    @And("I submit the form")
    public void iSubmitTheForm() {
        getDriver().findElement(By.xpath("//button[@id='formSubmit']")).click();
    }

    @And("I verify that submitted required fields saved correctly")
    public void iVerifyThatSubmittedRequiredFieldsSavedCorrectly() {
        Date today = new Date();
        String date = new SimpleDateFormat("MM/dd/yyyy").format(today);
        String time = new SimpleDateFormat("h:mm a zzzz").format(today);
        String timeconverted = time.replace("AM", "am").replace("PM","pm");
        assertThat(getDriver().findElement(By.xpath("//div[@class='well form-container container-fluid']")).getText()).
                isEqualTo("Username newuser01\n" +
                        "Email newuser01@gmail.com\n" +
                        "Password [entered]\n" +
                        "First Name FirstN\n" +
                        "Middle Name MiddleN\n" +
                        "Last Name LastN\n" +
                        "Name FirstN MiddleN LastN\n" +
                        "Agreed To Privacy Policy true\n" +
                        "Location Los Altos, CA 94022\n" +
                        "Current Date " + date +"\n" +
                        "Current Time " + timeconverted +"\n" + "\n" +
                        "Return");
    }

    @And("I verify email field behavior")
    public void iVerifyEmailFieldBehavior() {
        getDriver().findElement(By.xpath("//input[@name='email']")).clear();
        getDriver().findElement(By.xpath("//input[@name='email']")).sendKeys("newuser01@" + ENTER);
        assertThat(getDriver().findElement(By.xpath("//label[@id='email-error']")).isDisplayed()).isTrue();
        getDriver().findElement(By.xpath("//input[@name='email']")).sendKeys(Keys.BACK_SPACE);
        assertThat(getDriver().findElement(By.xpath("//label[@id='email-error']")).isDisplayed()).isTrue();
        getDriver().findElement(By.xpath("//input[@name='email']")).clear();
        getDriver().findElement(By.xpath("//input[@name='email']")).sendKeys("newuser01@gmail.com");
        assertThat(getDriver().findElement(By.xpath("//label[@id='email-error']")).isDisplayed()).isFalse();
    }

    @And("I fill out optional fields")
    public void iFillOutOptionalFields() {
        getDriver().findElement(By.xpath("//input[@name='phone']")).sendKeys("949.5455454");
        getDriver().findElement(By.xpath("//input[@id='dateOfBirth']")).sendKeys("01/01/1990");
        getDriver().findElement(By.xpath("//select[@name='countryOfOrigin']//option[contains(text(),'Italy')]")).click();
        getDriver().findElement(By.xpath("//input[@type='radio' and @value='male']")).click();
        getDriver().findElement(By.xpath("//input[@name='allowedToContact']")).click();
        getDriver().findElement(By.xpath("//textarea[@id='address']")).sendKeys("123 Test Street, Orange, CA 92700");
        getDriver().findElement(By.xpath("//select[@name='carMake']/option[contains(text(),'BMW')]")).click();
        getDriver().switchTo().frame("additionalInfo");
        getDriver().findElement(By.xpath("//input[@id='contactPersonName']")).sendKeys("User Name");
        getDriver().findElement(By.xpath("//input[@id='contactPersonPhone']")).sendKeys("949-1111111");
        getDriver().switchTo().defaultContent();
        getDriver().findElement(By.xpath("//button[@id='thirdPartyButton']")).click();
        getDriver().switchTo().alert().accept();
        getDriver().switchTo().defaultContent();
    }

    @Then("I verify that submitted required and optional fields saved correctly")
    public void iVerifyThatSubmittedRequiredAndOptionalFieldsSavedCorrectly() {
        Date today = new Date();
        String date = new SimpleDateFormat("MM/dd/yyyy").format(today);
        String time = new SimpleDateFormat("h:mm a zzzz").format(today);
        String timeconverted = time.replace("AM", "am").replace("PM","pm");
        assertThat(getDriver().findElement(By.xpath("//div[@class='well form-container container-fluid']")).getText()).
                isEqualTo("Username newuser01\n" +
                        "Email newuser01@gmail.com\n" +
                        "Password [entered]\n" +
                        "First Name FirstN\n" +
                        "Middle Name MiddleN\n" +
                        "Last Name LastN\n" +
                        "Name FirstN MiddleN LastN\n" +
                        "Agreed To Privacy Policy true\n" +
                        "Phone 949.5455454\n" +
                        "Date Of Birth 01/01/1990\n" +
                        "Country Of Origin Italy\n" +
                        "Gender male\n" +
                        "Allowed To Contact true\n" +
                        "Address 123 Test Street, Orange, CA 92700\n" +
                        "Car Make BMW\n" +
                        "Contact Person Name User Name\n" +
                        "Contact Person Phone 949-1111111\n" +
                        "Location Los Altos, CA 94022\n" +
                        "Current Date " + date +"\n" +
                        "Current Time " + timeconverted +"\n" +
                        "Third Party Agreement accepted\n" +  "\n" +
                        "Return");
    }
}
