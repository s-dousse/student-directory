# STUDENT DIRECTORY AS IT IS AT STEP 7
def input_students
    puts "Please ente the neams of the students"
    puts "To finish, just hit return twice"
    # create an empty array
    students_list = []
    # get the first name
    name = gets.chomp
    # while the name is not empty, reapeat this code
    while !name.empty? do
        # add the student hash to the array
        students_list << {name: name, cohort: :november}
        #get another names from the user
        name = gets.chomp
    end
    # return the array of students
    students_list
end

def print_header
  puts "The students of Villains Academy"
  puts "--------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# nothing is happening until we call the methods
# passing the students variable to the methods as an argument called 'names'
# This is because the methods don't have access to local variables defined outside them.
students = input_students
print_header
print(students)
print_footer(students)