class Projects
    attr_accessor :name, :developers, :code_camp

    @@all = []

    def initialize(name, developer, code_camp)
        @name = name
        @developers = developer
        @code_camp = code_camp
        @@all << self
    end

    def self.all
        @@all
    end
end