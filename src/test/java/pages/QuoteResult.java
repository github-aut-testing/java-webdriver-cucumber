package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class QuoteResult extends Page{
    //fields (that are private)
    @FindBy(xpath = "//div[@id='quotePageResult']")
    private WebElement result;

    //methods (that are public)
    public String getResult() {
        return result.getText();
    }
}
