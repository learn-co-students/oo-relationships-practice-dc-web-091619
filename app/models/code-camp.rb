class Code_Camp
    attr_accessor :name, :skills
    @@all = []
    def initialize(name, skills)
        @name = name
        @skills = skills.split(", ")
        @@all << self
    end
    def self.all
        @@all
    end
    def developers
        Developer.all.select{|dev|
            dev.code_camp == self}
    end
    def projects
        self.developers.map {|dev|
            dev.project}.uniq
    end
    def find_dev_by_name(dev_name)
        self.developers.find {|dev|
            dev.name == dev_name}
    end
    def find_project_by_name(proj_name)
        self.projects.find{|proj|
            proj.name == proj_name}
    end
end