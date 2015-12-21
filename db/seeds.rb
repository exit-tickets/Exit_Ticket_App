Instructor.destroy_all
Cohort.destroy_all
Student.destroy_all
Question.destroy_all
ExitTicket.destroy_all
Response.destroy_all
Producer.destroy_all


instructors = Instructor.create([{
  first_name: "Emily", 
  last_name: "Oppenheimer", 
  email: "opemily@gmail.com", 
  password: "password123"
}])

cohorts = Cohort.create([{
  name: "Persephone", 
  instructor: Instructor.first
}])

students = Student.create([{
  first_name: "Lucious",
  last_name: "Lyon", 
  email: "llyon@empire.com", 
  password: "password123", 
  cohort: Cohort.first
}])

<<<<<<< HEAD
=======
producers = Producer.create([{
  first_name: "Michael", 
  last_name: "Scott", 
  email: "thatswhatshesaid@gmail.com", 
  password: "password123",
}])


>>>>>>> 01652dbf692320fd1ae0cbf30ff7e6e853c535b9
