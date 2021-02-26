class Backer

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def projectbackers
        ProjectBacker.all.select do |projectbacker|
            projectbacker.backer == self
        end
    end

    def backed_projects
        projectbackers.map do |projectbacker|
            projectbacker.project
        end
    end
    
end