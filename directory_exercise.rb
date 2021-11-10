def input_students
    puts "Please enter the name of the students and then his/her cohort"
    puts "To finish, just hit return twice"
    # create an empty array
    students_list = []
    # get the first name
    name = gets.chomp.capitalize
    # while the name is not empty, reapeat this code
    while !name.empty? do
      # get student's cohort
      cohort = gets.chomp.capitalize
      # add the student hash to the array
      students_list << {name: name, cohort: cohort}
      #get another names from the user
      name = gets.chomp.capitalize
    end
    # return the array of students
    students_list
end

def print_header
  puts "The students of Villains Academy"
  puts "--------------"
end

def print(students)
  index = 0
  while index < (students.count)
    # center each line individually it string slit over several line. Ruby's string class does not support centering a multi-line string.
    # use split/map/join combination => "our_str".lines.map { |line| line.strip.center(80) }.join("\n")
    puts "#{index+1}. #{students[index][:name]} (#{students[index][:cohort]} cohort)".center(80)
    index += 1
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)