# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Instructor.destroy_all
Cohort.destroy_all
Student.destroy_all

instructors = Instructor.create([
  {first_name: "Emily", last_name: "Oppenheimer", email: "opemily@gmail.com", password: "password123"}, 
  {first_name: "Bennett", last_name: "James", email: "bennettzjames@gmail.com", password: "password123"}, 
  {first_name: "Dana", last_name: "Czinsky", email: "danamc18@gmail.com", password:"password123"}, 
  {first_name: "Kim", last_name: "Hart", email: "kim_hart@gmail.com", password: "password123"}
  ])

cohorts = Cohort.create([
  {name: "Bacon", instructor_id:Instructor.first.id }, 
  {name: "Lettuce", instructor_id: Instructor.first.id}, 
  {name: "Tomato", instructor: Instructor.first.id}, 
  {name:"John", instructor_id: Instructor.second.id }, 
  {name: "Paul", instructor: Instructor.second.id}, 
  {name: "George", instructor_id: Instructor.second.id}, 
  {name: "Ringo", instructor_id: Instructor.second.id}], 
  {name: "Leonardo", instructor_id: Instructor.third.id}, 
  {name: "Donatello", instructor_id:Instructor.third.id}, 
  {name: "Raphael", instructor_id: Instructor.third.id}, 
  {name: "Michaelangelo", instructor_id: Instructor.third.id}, 
  {name: "Mr. Brown", instructor_id: Instructor.fourth.id}, 
  {name: "Mr. Blonde", instructor_id: Instructor.fourth.id}, 
  {name: "Mr. Pink", instructor_id: Instructor.fourth.id}, 
  {name: "Mr. White", instructor_id: Instructor.fourth.id}, 
  {name: "Mr. Blue", instructor_id: Instructor.fourth.id}
  ])

students = Student.create([
  {first_name: "Lucious", last_name: "Lyon", email: "llyon@empire.com", password: "password123", cohort_id: Cohort.first.id }, 
  {first_name: "Cookie", last_name: "Lyon", email: "clyon@empire.com", password: "password123", cohort_id: Cohort.first.id}, 
  {first_name: "Hakeem", last_name: "Lyon", email: "hlyon@empire.com", password: "password123", cohort_id: Cohort.first.id}, 
  {first_name: "Jamal", last_name: "Lyon", email: "jlyon@empire.com", password: "password123", cohort_id: Cohort.first.id}, 
  {first_name: "Walter", last_name: "White", email: "heisenberg@hotmail.com", password: "password123", cohort_id: Cohort.second.id}, 
  {first_name: "Skyler", last_name: "White", email: "skyler@hotmail.com", password: "password123", cohort_id: Cohort.second.id}, 
  {first_name: "Jesse", last_name: "Pinkman", email: "capncook@hotmail.com", password: "password123", cohort_id: Cohort.second.id}, 
  {first_name: "Saul", last_name: "Goodman", email: "sgoodman@bettercallsaul.com", password: "password123", cohort_id: Cohort.third.id}, 
  {first_name: "Hector", last_name: "Salamanca", email: "dingdingding@dingdingding.com", password: "password123", cohort_id: Cohort.third.id}, 
  {first_name: "Tuco", last_name: "Salamanca", email: "tsalamanca@meth.com", password: "password123", cohort_id: Cohort.third.id}, 
  {first_name: "Annie", last_name: "Edison", email: "aedison@greendale.edu", password: "password123", cohort_id: Cohort.fourth.id}, 
  {first_name: "Jeff", last_name: "Winger", email: "jwinger@greendale.edu", password: "password123", cohort_id: Cohort.fourth.id}, 
  {first_name: "Britta", last_name: "Perry", email: "bperry@greendale.edu", password: "password123", cohort_id: Cohort.fourth.id}, 
  {first_name: "Abed", last_name: "Nadir", email: "anadir@greendale.edu", password: "password123", cohort_id: Cohort.fourth.id}, 
  {first_name: "Shirley", last_name: "Bennett", email: "sbennett@greendale.edu", password: "password123", cohort_id: Cohort.fourth.id}, 
  {first_name: "Troy", last_name: "Barnes", email: "tbarnes@greendale.edu", password: "password123", cohort_id: Cohort.fourth.id}, 
  {first_name: "Pierce", last_name: "Hawthorne", email: "phawthorne@greendale.edu", password: "password123", cohort_id: Cohort.fourth.id}, 
  {first_name: "Bart", last_name: "Simpson", email: "bart@simpson.com", password: "password123", cohort_id: Cohort.fifth.id}, 
  {first_name: "Lisa", last_name: "Simpson", email: "lisa@simpson.com", password: "password123", cohort_id: Cohort.fifth.id}, 
  {first_name: "Marge", last_name: "Simpson", email: "marge@simpson.com", password: "password123", cohort_id: Cohort.fifth.id}, 
  {first_name: "Homer", last_name: "Simpson", email: "bart@simpson.com", password: "password123", cohort_id: Cohort.fifth.id}, 
  {first_name: "Liz", last_name: "Lemon", email: "llemon@nbc.com", password: "password123", cohort_id: 6}, 
  {first_name: "Tracy", last_name: "Jordan", email: "tjordan@nbc.com", password: "password123", cohort_id: Cohort.find_nth(6)}, 
  {first_name: "Jenna", last_name: "Maroney", email: "jmaroney@nbc.com", password: "password123" , cohort_id: Cohort.find_nth(6)}, 
  {first_name: "Jenna", last_name: "Donaghy", email: "jmaroney@nbc.com", password: "password123", cohort_id: Cohort.find_nth(6)}, 
  {first_name: "Jenna", last_name: "Donaghy", email: "jmaroney@nbc.com", password: "password123", cohort_id: Cohort.find_nth(6)}, 
  {first_name: "Ricky", last_name: "Ricardo", email: "rricardo@email.com", password: "password123", cohort_id: Cohort.find_nth(7)}, 
  {first_name: "Lucy", last_name: "Ricardo", email: "lricardo@email.com", password: "password123", cohort_id: Cohort.find_nth(7)}, 
  {first_name: "Ethel", last_name: "Mertz", email: "emertz@email.com", password: "password123", cohort_id: Cohort.find_nth(7)}, 
  {first_name: "Fred", last_name: "Mertz", email: "fmertz@email.com", password: "password123", cohort_id: Cohort.find_nth(7)}, 
  {first_name: "Groucho", last_name: "Marx", email: "gmarx@email.com", password: "password123", cohort_id: Cohort.find_nth(8)}, 
  {first_name: "Chico", last_name: "Marx", email: "cmarx@email.com", password: "password123", cohort_id: Cohort.find_nth(8)}, 
  {first_name: "Harpo", last_name: "Marx", email: "hmarx@email.com", password: "password123", cohort_id: Cohort.find_nth(8)}, 
  {first_name: "Zeppo", last_name: "Marx", email: "zmarx@email.com", password: "password123", cohort_id: Cohort.find_nth(8)}, 
  {first_name: "Zach", last_name: "Morris", email: "zmorris@bayside.com", password: "password123", cohort_id: Cohort.find_nth(9)}, 
  {first_name: "Kelly", last_name: "Kapowski", email: "kkapowski@bayside.com", password: "password123", cohort_id: Cohort.find_nth(9)}, 
  {first_name: "A.C.", last_name: "Slater", email: "acslater@bayside.com", password: "password123", cohort_id: Cohort.find_nth(9)}, 
  {first_name: "Jessie", last_name: "Spano", email: "jspano@bayside.com", password: "password123", cohort_id: Cohort.find_nth(10)}, 
  {first_name: "Screech", last_name: "Samuels", email: "ssamuels@bayside.com", password: "password123", cohort_id: Cohort.find_nth(10)}, 
  {first_name: "Lisa", last_name: "Turtle", email: "lturtle@bayside.com", password: "password123", cohort_id: Cohort.find_nth(10)}, 
  {first_name: "Brenda", last_name: "Walsh", email: "brendawalsh@bhh.com", password: "password123", cohort_id: Cohort.find_nth(11)},
  {first_name: "Brandon", last_name: "Walsh", email: "brandonwalsh@bhh.com", password: "password123", cohort_id: Cohort.find_nth(11)},
  {first_name: "Dylan", last_name: "McKay", email: "dmckay@bhh.com", password: "password123", cohort_id: Cohort.find_nth(11)},
  {first_name: "Kelly", last_name: "Taylor", email: "ktaylor@bhh.com", password: "password123", cohort_id: Cohort.find_nth(12)},
  {first_name: "Steve", last_name: "Sanders", email: "ssanders@bhh.com", password: "password123", cohort_id: Cohort.find_nth(12)},
  {first_name: "Andrea", last_name: "Zuckerman", email: "azuckerman@bhh.com", password: "password123", cohort_id: Cohort.find_nth(12)},
  {first_name: "David", last_name: "Silver", email: "dsilver@bhh.com", password: "password123", cohort_id: Cohort.find_nth(13)},
  {first_name: "Donna", last_name: "Martin", email: "dsilver@bhh.com", password: "password123", cohort_id: Cohort.find_nth(13)},
  {first_name: "David", last_name: "Silver", email: "dsilver@bhh.com", password: "password123", cohort_id: Cohort.find_nth(13)},
  {first_name: "Jesse", last_name: "Vasquez", email: "dsilver@bhh.com", password: "password123", cohort_id: Cohort.find_nth(13)},
  {first_name: "David", last_name: "Silver", email: "dsilver@bhh.com", password: "password123", cohort_id: Cohort.find_nth(13)},
  {first_name: "Doc", last_name: "Walmart", email: "docwalmart@email.com", password: "password123", cohort_id: Cohort.find_nth(14)},
  {first_name: "Man", last_name: "Man", email: "manman@email.com", password: "password123", cohort_id: Cohort.find_nth(14)},
  {first_name: "A.", last_name: "Nubis", email: "nubicat@email.com", password: "password123", cohort_id: Cohort.find_nth(14)},
  ])