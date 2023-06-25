import UIKit

class TutoringProgram{
	
	// Properties
	var budget: Float
	var resources: [String]
	var students: [Student]
	var tutors: [Tutor]
	
	// Initializers
	init(budget: Float, resources: [String], students: [Student], tutors: [Tutor]){
		self.budget = budget
		self.resources = resources
		self.students = students
		self.tutors = tutors
	}
	
	// Methods
	func enrollStudent(student: Student) {
		// add the student to the list of enrolled students
		students.append(student)
	}
	
	func recruitTutor(tutor: Tutor) {
		// add the tutor to the list of recruited tutors
		tutors.append(tutor)
	}
	
	func assignTutorToStudent(student: Student, tutor: Tutor) {
		// assign the tutor to the student
		student.tutor = tutor
	}
	
	func assignResourceToTutor(resource: String, tutor: Tutor) {
		// assign the resource to the tutor
		tutor.resources.append(resource)
	}
	
	func purchaseResource(resource: String, cost: Float) {
		// add the resource to the list
		resources.append(resource)
		// subtract the cost from the budget
		budget -= cost
	}
	
	func payTutors() {
		// iterate through each tutor
		for tutor in tutors {
			// pay the tutor the agreed upon rate
			budget -= tutor.rate
		}
	}
	
	func tutorStudents() {
		// iterate through each student
		for student in students {
			// get the student's assigned tutor
			let tutor = student.tutor
			
			// have the tutor help the student with their homework
			tutor.helpStudentWithHomework(student)
		}
	}
	
	func checkStudentProgress() {
		// iterate through each student
		for student in students {
			// check the student's grades and other progress indicators
			let progress = student.checkProgress()
			
			// if the student is not making adequate progress, take corrective action
			if progress < 3 {
				student.tutor.updateTutoringStrategy()
			}
		}
	}
}

class Student {
	// Properties
	var name: String
	var grade: Int
	var progress: Int
	var tutor: Tutor
	
	// Initializer
	init(name: String, grade: Int, progress: Int, tutor: Tutor) {
		self.name = name
		self.grade = grade
		self.progress = progress
		self.tutor = tutor
	}
	
	// Methods
	func checkProgress() -> Int {
		// check the student's grades and other progress indicators
		return progress
	}
}

class Tutor {
	// Properties
	var name: String
	var experience: Int
	var resources: [String]
	var rate: Float
	
	// Initializer
	init(name: String, experience: Int, resources: [String], rate: Float) {
		self.name = name
		self.experience = experience
		self.resources = resources
		self.rate = rate
	}
	
	// Methods
	func helpStudentWithHomework(student: Student) {
		// use available resources to help the student with their homework
		for resource in resources {
			print("Using \(resource) to help \(student.name) with their homework!")
		}
	}
	
	func updateTutoringStrategy() {
		// update the tutor's tutoring strategy to help the student improve
		print("Updating tutoring strategy for \(name) to help \(student.name) improve!")
	}
}