instructors = Instructor.create([{
  first_name: "Emily", 
  last_name: "Oppenheimer", 
  email: "opemily@gmail.com", 
  password: "password123"
}])

cohorts = Cohort.create([{
  name: "Bacon", 
  instructor_id: 1
}])

students = Student.create([{
  first_name: "Lucious",
  last_name: "Lyon", 
  email: "llyon@empire.com", 
  password: "password123", 
  cohort_id: 1
}])