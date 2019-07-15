import UIKit

var str = "Hello, playground"

//inside for loop we created an array to iterate through it
for i in 0...5 {
    print("\(i)")
}

//we created an array and then we iterated through its items
let cities = ["Amsterdam", "New York", "San Francisco"]
for city in cities {
    print(city)
}

//we created a dictionary and then iterated through its key and value
let ages = ["Antoine": 2, "Jaap": 1, "Jack": 3]
for (name, age) in ages {
    print("\(name) is \(age) years old")
}

//while loop from greater number to smaller
var m = 5
while m > 0 {
    print("true \(m)")
    m -= 1 //m = m - 1
}

//while loop from smaller value to bigger one
var i = 1
while i <= 15 {
    print(i)
    i += 2 //i = i + 2
}


//functions example addNumbers take 2 inputs and returns an integer
func addNumbers(numA: Int, numB: Int) -> Int {
    let result = numA + numB
    return result
}

//created an Integer and gave it the result of the addNumbers
let additionResult: Int = addNumbers(numA: 12, numB: 10)
print(additionResult)


//example for Structs
//difference between struct and class
//struct has value type // class has reference type
//struct has no inheritance
//common points between class and struct
//both has initializers, methods, properties
struct Circle {
    var centerX = 0.0, centerY = 0.0, radius = 1.0

    mutating func radiusDouble() {
        radius = radius * 2
    }
}

//array Example
var studentsArray : [String] = ["Omar", "abo norah", "Abdullah", "hana", "reem", "Fahad"]

//check if array is empty
let arrayCheck: Bool = studentsArray.isEmpty
print("is array empty: \(arrayCheck)")

//adding new item to array studentsArray
studentsArray.append("Awad")

//for loop to print all items in array
for studentName in studentsArray {
    print(studentName)
}

//for loop to print specific name "hana"
for student in studentsArray {
    if student == "hana" {
        print(student)
    }
}

//for loop to print at which index is a specific item
for i in 0...studentsArray.count-1 {
    if studentsArray[i] == "hana" {
        print(i)
    }
}

//get first item in array
print("first item: \(studentsArray.first)")

//get last item in array
print("last item: \(studentsArray.last)")

//get number of items in an array
print(studentsArray.count)

//get the string on a specific index
print(studentsArray[3])

//for loop to remove item by its value
for i in 0...studentsArray.count-1 {
    if studentsArray[i] == "abo norah" {
        print("item removed in the for loop :\(studentsArray[i])")
        studentsArray.remove(at: i)
        break
    }
}

//removing specific index
studentsArray.remove(at: 1)
for studentName in studentsArray {
    print("after remove: \(studentName)")
}

//removing all items in array
studentsArray.removeAll()
print("students count after remove all \(studentsArray.count)")

//check if array is empty after remove all
let arrayCheckAfterRemoveAll: Bool = studentsArray.isEmpty
print("is array empty: \(arrayCheckAfterRemoveAll)")

//created new array numbers with items
let numbers = [10, 20, 30, 40, 50]
//check if numbers.last is not nil then create a constant lastNumber and give it a value "numbers.last"
if let lastNumber = numbers.last {
    print(lastNumber)
}
