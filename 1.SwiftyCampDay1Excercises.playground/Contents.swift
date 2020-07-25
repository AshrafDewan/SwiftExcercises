

//1. Write a function that accept two integer values and to test which value is nearest to the value 10, or return 0 if both integers have same distance from 10.

func nearestToTen(x: Int, y: Int) -> Int{
    if abs(x - 10) == abs(y - 10) {
        return 0
    } else if abs(x - 10) > abs(y - 10) {
        return y
    } else {
        return x
    }
}

//2. Write a function to create a string taking characters at indexes 0, 2, 4, 6, 8... from a given string.

func selectedChars(_ str: String) -> String {
    var selStr = ""
    
    for (index, ltr) in str.enumerated() {
        if index % 2 == 0 {
            selStr.append(ltr)
        }
    }
    return selStr
}

//3. Write a function to convert the last three characters in upper case. If the string has less than 3 chars, lowercase whatever is there.

func lowerCaseString(_ str: String) -> String {
    var newStr = ""
    
    if str.count < 3 {
        newStr = str.lowercased()
    } else {
        for (index, ltr) in str.enumerated() {
            if index >= str.count - 3 {
                newStr.append(ltr.lowercased())
            } else {
                newStr.append(ltr)
            }
        }
    }
    return newStr
}

//4. Write a function to test if the number of 1's is greater than the number of 3's of a given array of integers.

func onesAndThrees(_ array: [Int]) {
    var onesCounter = 0
    var threesCounter = 0
    
    for i in array {
        if i == 1 {
            onesCounter += 1
        } else if i == 3 {
            threesCounter += 1
        } else {
            return
        }
    }
    
    if onesCounter > threesCounter {
        print("The number of 1's is greater than the number of 3's")
    } else if onesCounter < threesCounter {
        print("The number of 3's is greater than the number of 1's")
    } else {
        print("The number of 1's is equal to the number of 3's")
    }
}

//5. Write a function that Determine whether a given integer number is prime.

func prime(_ x: Int) {
    if x == 1 {
        print("\(x) is prime")
    } else {
        for i in 1...(x / 2) {
            if x % i == 0 && i != 1 {
                print("\(x) isn't prime")
                break
            } else if i != (x / 2) {
                continue
            } else {
                print("\(x) is prime")
            }
        }
        
    }
}

//6. Write a function that Determine the greatest common divisor of two positive integer numbers.

func divisor(x: Int, y: Int) {
    var counterX = 0
    var counterY = 0
    var newX = x
    var newY = y
    
    for _ in 0...100 {
        if newX % 2 == 0 {
            newX /= 2
            counterX += 1
        }
        if newX % 3 == 0 {
            newX /= 3
            counterX += 1
        }
        if newX % 5 == 0 {
            newX /= 5
            counterX += 1
        }
    }
    
    for _ in 0...100 {
        if newY % 2 == 0 {
            newY /= 2
            counterY += 1
        }
        if newY % 3 == 0 {
            newY /= 3
            counterY += 1
        }
        if newY % 5 == 0 {
            newY /= 5
            counterY += 1
        }
    }
    
    if counterX == counterY {
        print("\(x) has the same number of divisions as \(y)")
    } else if counterX > counterY {
        print("\(x) is greater common divisor than \(y)")
    } else {
        print("\(y) is greater common divisor than \(x)")
    }
}
