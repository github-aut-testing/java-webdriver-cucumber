package pages;

public class Cat extends Pet {
    public Cat(String value) {
        super(value);
    }
    //First we define: fields
    //set private access-modifier, using Encapsulation
//    private String name;

    //static POLYMORPHISM (same method, different arguments)
//    public Cat() {
//        name = "nameless one";
//    }

    //Second we define: methods
    public void speak() {
        System.out.println(name + " is meowing!");
    }
}
