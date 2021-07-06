# class teacher

#     #has many students through class period (returns all students)
#     #has many class periods (returns array of all class periods)
#     #give_grade takes an argument of a student, class period, and number and assigns a grade to a student
    
#     .all returns all teachers
#     .mega_teacher returns teacher with the most students
#     .busy_teacher returns the teacher with the most class periods
    
class Teacher 

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def teachers_classperiods
        ClassPeriod.all.select {|classperiod| classperiod.teacher == self}
    end

    def students
        teachers_classperiods.map {|classperiod| classperiod.students.flatten }
    end

    def self.mega_teacher
        @@all.max_by {|teacher| teacher.students.length }
    end
    
    def self.busy_teacher
        @@all.max_by {|teacher| teacher.teachers_classperiods.length}
    end

    def give_grade(student,classperiod,number_grade)
        classperiod.class_report_card[student] = number_grade
    end
end