package pages;

import org.openqa.selenium.support.PageFactory;
import static support.TestContext.getDriver;

public class Page {
    protected String url;
    protected String title;
    //Constructor below
    public Page() {
        PageFactory.initElements(getDriver(), this);
    }
    //methods below
    public void open() {
        getDriver().get(url);
    }
}
