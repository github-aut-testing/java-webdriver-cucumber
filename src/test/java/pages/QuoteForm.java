package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class QuoteForm extends Page{
    //state below
//    private String url;                           //-->this moved to Page
    //Constructor below
    public QuoteForm() {
//        PageFactory.initElements(getDriver(), this); //-->this moved to Page
        url = "https://skryabin.com/market/quote.html";
        title = "Get a Quote";
    }
    //methods below
//    public void open() {                  //-->this moved to Page
//        getDriver().get(url);
//    }
    //fields (that are private)
    @FindBy(xpath = "//input[@name='username']")
    private WebElement username;

    @FindBy(xpath = "//input[@name='email']")
    private WebElement email;

    @FindBy(xpath = "//input[@id='password']")
    private WebElement password;
    @FindBy(xpath = "//input[@id='confirmPassword']")
    private WebElement confirmPassword;

    @FindBy(id = "name")
    private WebElement name;
    @FindBy(id = "firstName")
    private WebElement firstName;
    @FindBy(id = "middleName")
    private WebElement middleName;
    @FindBy(id = "lastName")
    private WebElement lastName;
    @FindBy(xpath = "//span[text()='Save']")
    private WebElement saveButton;

    @FindBy(xpath = "//button[@id='formSubmit']")
    private WebElement submitButton;

    //methods (that are public)
    public void fillUsername(String value) {
        username.sendKeys(value);
    }

    public void fillEmail(String value) {
        email.sendKeys(value);
    }

    public void fillName(String first, String middle, String last) {
        name.click();
        firstName.sendKeys(first);
        middleName.sendKeys(middle);
        lastName.sendKeys(last);
        saveButton.click();
    }

    public void clickSubmit() {
        submitButton.click();
    }

//    public String getTextFromUsername() {
//        return username.getAttribute("value");
//    }

}
