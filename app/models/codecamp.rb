class Code_Camp

    attr_accessor :name, :developers, :projects

    @@all = []

    def initialize(name, developer, projects)
        @name = name
        @developers = developer
        @projects = projects
        @@all << self
    end

    def self.all
        @@all
    end

    def developers
    end
    def projects
    end
end