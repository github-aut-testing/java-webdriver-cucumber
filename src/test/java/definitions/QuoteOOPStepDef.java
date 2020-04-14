package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import pages.QuoteForm;

public class QuoteOOPStepDef {
    @Given("I go to {string} page oop")
    public void iGoToPageOop(String page) {
        new QuoteForm().open();
    }

    @When("I fill out required fields oop")
    public void iFillOutRequiredFieldsOop() {
        QuoteForm form = new QuoteForm();
        form.fillUsername("newuser01");
        form.fillEmail("newuser01@gmail.com");
        form.fillName("FirstN", "MiddleN", "LastN");
    }

    @And("I submit the form oop")
    public void iSubmitTheFormOop() {
//        QuoteForm form = new QuoteForm();
//        form.clickSubmit();
        //or another way to write the above, more simple:
        new QuoteForm().clickSubmit();
    }
}
