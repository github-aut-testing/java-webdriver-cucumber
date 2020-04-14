package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import pages.Cat;
import pages.Dog;
import pages.Pet;

import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;


public class JavaStepDefs {
    @Given("I write java step")
    public void iWriteJavaStep() {
        System.out.println("Hello World!");
    }

    @And("I write another java step with argument {string}")
    public void iWriteAnotherJavaStepWithArgument(String arg0) {
        System.out.println(arg0);
    }

    @Then("I say hello back")
    public void iSayHelloBack() {
        //using 'response' as 'var1' (variable) but make sense to use when we have more than one variable
        String response = "Hello Stranger";
        //the second 'response' below will substitute the previous from above
        response = "Hello Stranger!";
        System.out.println(response);

        String present1 = "I'm";
        String present2 = "a bot!";
        System.out.println(present1 + " " + present2);
    }

    @Then("I say {string}")
    public void iSay(String message) { //we substitute String arg0->String message, easier to read
        //String message = arg0;
        System.out.println("Great! " + message);
    }


    @And("I introduce myself")
    public void iIntroduceMyself() {
        String firstName = "Bob";
        String lastName = "Smart";
        String color = "green";
        System.out.println("Hi, my name is "+firstName +" "+lastName+", my favorite color is "+color+".");
    }

    @Given("I perform actions with {string} and {string}")  //METHODS EXERCISE
    public void iPerformActionsWithAnd(String str1, String str2) {
        //Print those variables into console as they are
        //System.out.println(str1+" "+str2);
        System.out.println(str1);
        System.out.println(str2);
        //Print those variables uppercase into console, result should be all capital
        System.out.println(str1.toUpperCase());
        System.out.println(str2.toUpperCase());
        //Print those variables length into console, result should be the length 6
        System.out.println(str1.length());
        System.out.println(str2.length());
        //Print result of exact comparison of those variables into console, result should be False
        System.out.println(str1.equals(str2));
        //or another equal operation is using (==) but better only for numbers (System.out.println(str2==str1);)
        System.out.println(str2.equals(str1));
        //Print result of exact comparison ignoring cases of those variables into console, result should be True
        System.out.println(str1.equalsIgnoreCase(str2));
        System.out.println(str2.equalsIgnoreCase(str1));
        //Print result of partial comparison of those variables into console – if first variable contains second - result should be True
        System.out.println(str1.contains(str2));
        System.out.println(str2.contains(str1));

        int i = 5;

        System.out.println("var i = " + i);
        int j = 5;
        System.out.println("var j = " + j);
    }

    @Given("I want to do math operation between number {int} and {int}")
    public void iWantToDoMathOperationBetweenNumberAnd(int num1, int num2) {
        int a= num1+num2;
        int b= num1-num2;
        int c= num1*num2;
        int d= num1/num2;
        int e= num1%num2;
        //int f= num1**num2; -> not correct, the below string works for exponent (double result = Math.pow(number, exponent);)
        double f = Math.pow(num1, num2);
        System.out.println("Addition: " + a);
        System.out.println("Subtraction: " + b);
        System.out.println("Multiplication: " + c);
        System.out.println("Division: " + d);
        System.out.println("Modulus: " + e);
        System.out.println("Exponent: " + f);
    }

    @Given("I think your favorite color is {string}")
    public void iThinkYourFavoriteColorIs(String arg0) {
        String color = arg0;
        if (color.equalsIgnoreCase("blue")) {
            System.out.println("Correct! Blue is my favorite color!");
        } else if (color.equalsIgnoreCase("green")) {
            System.out.println("Very close, but not my favorite one! Try again! ;)");
        } else {
            System.out.println("Wrong! This is not my favorite color. Try again! :)");
        }
    }

    @Given("I compare {string} and {string} strings")
    public void iCompareAndStrings(String arg0, String arg1) {
        String str1=arg0;
        String str2=arg1;
        if (str1.equals(str2)) {
            System.out.println("equal!");
        } else {
            System.out.println("not equal!");
        }
    }

    @Given("I compare {int} to number five")
    public void iCompareToNumberFive(int arg0) {
        int x=arg0;
        if (x>5) {
            System.out.println("more than 5");
        } else {
            System.out.println("less or equal than 5");
        }
    }

    @Given("I print url for {string} page")
    public void iPrintUrlForPage(String sites) {
        switch (sites.toLowerCase()) {
            case "google":
                System.out.println("https://www.google.com/");
                break;
            case "yahoo":
                System.out.println("https://www.yahoo.com/");
                break;
            case "quote":
                System.out.println("https://skryabin.com/market/quote.html");
                break;
            case "youtube":
                System.out.println("https://www.youtube.com/");
                break;
            case "ebay":
                System.out.println("https://www.ebay.com/");
                break;
            default:
                System.out.println("Not supported site! Actual: " + sites);
                //'throw' exception will make the case to actually fail
                throw new RuntimeException("Not supported site! Actual: " + sites);
        }
//        if (sites.equalsIgnoreCase("google")) {
//            System.out.println("https://www.google.com/");
//        } else if (sites.equalsIgnoreCase("yahoo")) {
//            System.out.println("https://www.yahoo.com/");
//        } else if (sites.equalsIgnoreCase("quote")) {
//            System.out.println("https://skryabin.com/market/quote.html");
//        } else {
//            System.out.println("Not supported site! Actual: " + sites);
//            throw new RuntimeException("Not supported site! Actual: " + sites);
//        }
    }

    @Given("I want to echo the word {string}")
    public void iWantToEchoTheWord(String echo) {
        System.out.println(echo.repeat(3));
    }

    @Given("I print local current date and time")
    public void iPrintLocalCurrentDateAndTime() {
        Date today = new Date();
        String date = new SimpleDateFormat("MM/dd/yyyy").format(today);
        SimpleDateFormat time = new SimpleDateFormat(" h:mm:ss a zzzz");
        //SimpleDateFormat sdf = new SimpleDateFormat(" MM dd 'and' hh:mm a");
        // CREATE DateFormatSymbols WITH ALL SYMBOLS FROM (DEFAULT) Locale
        DateFormatSymbols symbols = new DateFormatSymbols(Locale.getDefault());
        // OVERRIDE SOME symbols WHILE RETAINING OTHERS
        symbols.setAmPmStrings(new String[] { "am", "pm" });
        time.setDateFormatSymbols(symbols);
        String timeconverted = time.format(today);
        System.out.println("Current local Date and Time is:  " + date + " " + timeconverted);
    }

    @And("I print if number {int} is positive")
    public void iPrintIfNumberIsPositive(int num) {
        if (num > 0) {
            System.out.println("Number is positive");
        }
        else if (num == 0) {
            System.out.println("0 is not positive and is not negative");
        }
        else if (num < 0) {
            System.out.println("Number is negative");
        }
    }

    @And("I print {string} th day of week")
    public void iPrintThDayOfWeek(String day) {
        switch  (day) {
            case "1":
                System.out.println("Monday");
                break;
            case "2":
                System.out.println("Tuesday");
                break;
            case "3":
                System.out.println("Wednesday");
                break;
            case "4":
                System.out.println("Thursday");
                break;
            case "5":
                System.out.println("Friday");
                break;
            case "6":
                System.out.println("Saturday");
                break;
            case "7":
                System.out.println("Sunday");
                break;
            default:
                throw new RuntimeException("Please enter a number from 1 to 7.");
        }
    }

    @And("I print True if integer {int} is even and divisible by 5 or if integer odd and divisible by 3")
    public void iPrintTrueIfIntegerIsEvenAndDivisibleBy5OrIfIntegerOddAndDivisibleBy3(int number) {
        if (number % 5 == 0){
            System.out.println("True! Even number (divisible by 5)");
        }
        else if (number%3 == 1) {
            System.out.println("True! Odd number (divisible by 3) ");
        }else {
            System.out.println("False");
        }
    }

    @Given("I run classes")
    public void iRunClasses() {
        Pet tom = new Cat("Tom"); //this works because of Constructor
        //tom.setName("Tom");
        System.out.println("Cat's name: " + tom.getName());
        tom.walk();
        tom.eat("fish");
        tom.speak();

        Pet rex = new Dog("Rex");
        System.out.println("Dog's name: " + rex.getName());
        rex.walk();
        rex.eat("bones");
        rex.speak();
    }
}
