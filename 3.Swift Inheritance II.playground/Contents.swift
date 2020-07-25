// SwiftyCamp iOS Development Bootcamp
// This our first day code excercises
// Thank you.

// Swift Inheritance II

// Write the following code in your editor below:

// 1 - A class named Arithmetic with a method named add that takes 2 integers as parameters and returns an integer denoting their sum.
// 2 - A class named Adder that inherits from a superclass named Arithmetic.

// Your classes should not be public.
// Your add method must return the sum of its parameters.

private class Arithmetic {
    func add(x: Int, y: Int) -> Int {
        return x + y
    }
}

private class Adder: Arithmetic {
    override func add(x: Int, y: Int) -> Int {
        let z = x + y
        return z
    }
}
