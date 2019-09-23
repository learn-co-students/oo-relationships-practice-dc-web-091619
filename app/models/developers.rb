class Developer
    attr_accessor :name, :code_camp, :project
    @@all = []
    def initialize(name, code_camp, project)
        @name = name
        @code_camp = code_camp
        @project = project
        @@all << self
    end
    def self.all
        @@all
    end

    def skills
        self.code_camp.skills
    end
    def self.find_most_popular_skills
        code_camp = self.all.map {|dev|
            dev.code_camp}
        code_camp.max_by {|camp|
            code_camp.count(camp)}.skills
    end
end