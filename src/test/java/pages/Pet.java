package pages;

public abstract class Pet {
    //First we define: fields
    //set private access-modifier, using Encapsulation
    protected String name;

    //static POLYMORPHISM (same method, different arguments)
//    public Pet() {
//        name = "nameless one";
//    }

    //Constructor - list of all properties of a class
    //static POLYMORPHISM (same method, different arguments)
    public Pet(String value) {
        name = value;
    }

    public void setName(String value) {
        name = value;
    }

    public String getName () {
        return name;
    }

    //Second we define: methods
    public void walk() {
        System.out.println(name + " is walking!");
    }
    public void eat(String what) {
        System.out.println(name + " is eating " + what);
    }
    abstract public void speak();
}
