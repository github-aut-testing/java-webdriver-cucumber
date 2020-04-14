package pages;

public class Dog extends Pet {
    public Dog(String value) {
        super(value);
    }

    public void speak() {
        System.out.println(name + " is barking!");
    }
}
