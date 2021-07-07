class Projects
    attr_accessor :name, :developers, :code_camp, :skills_required
    @@all = []
    def initialize(name, skills)
        @name = name
        @developers = developers
        @code_camp = code_camp
        @skills_required = skills.split(", ")
        @@all << self
    end
    def self.all
        @@all
    end


    def developers
        Developer.all.select{|dev|
            dev.project == self}
    end
    def code_camps
        self.developers.map {|dev|
            dev.code_camp}.uniq
    end
    def find_dev_by_name(dev_name)
        self.developers.find {|dev|
            dev.name == dev_name}
    end

    def find_camp_by_name(camp_name)
        self.code_camps.find{|camp|
            camp.name == camp_name}
    end

    def find_dev_by_skills(skill)
        devs = Developer.all.map{|dev|
            dev if dev.skills.include?(skill)}
        devs.delete(nil)
        devs
    end
end