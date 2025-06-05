// Caitlin Hendricks
// CPSC 5330 - Mobile 1

import UIKit

typealias Student = (name: String, grade: Int)
let student1 : Student = ("Mark", 81)
let student2 : Student = ("Sally", 91)
let student3 : Student = ("Claire", 95)
let student4 : Student = ("Dylan", 78)
let student5 : Student = ("Alice", 84)

var students = [student1, student2, student3, student4, student5]

func findMax(students: [Student]) -> Student?{
    return students.max(by: {$0.grade < $1.grade})
}

// print data items
print("Students in class:")
for student in students {
    print("\(student.name), \(student.grade)")
}

// filter function to select and print students with grades 90 or above
print("\nGrade A students include:")
let gradeA = students.filter{$0.grade > 90}
for student in gradeA {
    print("\(student.name), \(student.grade)")
}

// function that returns tuple with max
if let topStudent = findMax(students: students) {
    print("\nThe student with the highest grade is \(topStudent.name) with a grade of \(topStudent.grade)")
}
else {
    print("\nThere is not a top student")
}
