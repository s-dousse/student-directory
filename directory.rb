student_count = 11
# let's put all student into an array
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex Delarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]
puts "The students of Villains Academy"
puts "--------------"
puts students.each { |student| puts student }
# finally, we print the total number of students
puts "Overall, we have #{students.count} great students"