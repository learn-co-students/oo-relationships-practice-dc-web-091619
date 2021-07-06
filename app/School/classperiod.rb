# class period

    # #has a teacher
    # #has many students (method returns an array of students)
    # #has a time
    # .popular_class returns a class with most students
    # .all
    
class ClassPeriod
    attr_reader :teacher, :time, :name
    attr_accessor :students, :class_report_card
    @@all = []

    def initialize(teacher,name)
        @name = name
        @teacher = teacher
        @students = []
        @class_report_card = {}
        @@all << self
    end

    def self.all
        @@all
    end

    def self.popular_class
        @@all.max_by { |classperiod| classperiod.students.length }
    end

    def grade_ave
        grade_sum =
        self.class_report_card.reduce(0) {|total, (key,value)|total += value}
        grade_sum/class_report_card.length
    end

    def self.lowest_average_grade
        self.all.min_by {|classperiod| classperiod.grade_ave}
    end

end

