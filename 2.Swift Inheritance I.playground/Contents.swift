// SwiftyCamp iOS Development Bootcamp
// This our first day code excercises
// Thank you.

// Swift Inheritance I

// Using inheritance, one class can acquire the properties of others. Consider the following Animal class:

    //class Animal {
    //    func walk() {
    //        print("I am walking")
    //    }
    //}

// This class has only one method, walk. Next, we want to create a Bird class that also has a fly method. We do this using extends keyword:

    //class Bird: Animal {
    //    func fly() {
    //        print("I am flying")
    //    }
    //}

// Finally, we can create a Bird object that can both fly and walk.

    //let bird = Bird()
    //bird.walk()
    //bird.fly()

// The above code will print:
// I am walking
// I am flying

// This means that a Bird object has all the properties that an Animal object has, as well as some additional unique properties.

// The code above is provided for you in your editor. You must add a sing method to the Bird class, then call your functions so that the code prints the following lines:

// I am walking
// I am flying
// I am singing


class Animal {
    func walk() {
        print("I am walking")
    }
}

class Bird: Animal {
    func fly() {
        print("I am flying")
    }
    
    func sing() {
        print("I am singing")
    }
}

let bird = Bird()
bird.walk()
bird.fly()
bird.sing()

