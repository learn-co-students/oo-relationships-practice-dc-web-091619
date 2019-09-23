# class students

    # has many class periods (returns an array of class periods)
    # has many teachers through class period (returns an array of teachers)
    # .busy_student returns the student with most class periods
   # #gpa returns average of students grades from all class periods

   require 'pry'
   class Student 
   
       attr_reader :name
       @@all = []
   
       def initialize(name)
           @name = name
           @@all << self
       end
   
       def self.all
           @@all
       end
   
       def student_class   ##returns array
           ClassPeriod.all.select do |classperiod|
           classperiod.students.any?(self)
           end 
       end
   
       def self.busy_student
           Student.all.max_by{|student| student.student_class.length}
       end
   
       def assigning_student(classperiod)
           classperiod.students << self
       end
   
       def students_report_card
           student_class.map do |classperiod|
               classperiod.class_report_card.select {|student,grade| student == self}.flatten
           end  # return an array
       end
   
       def gpa
           total_gpa =
           students_report_card.reduce(0) do |total, (student, grade_number)| 
               total += grade_number
           end
           total_gpa/students_report_card.length
       end
   
   end