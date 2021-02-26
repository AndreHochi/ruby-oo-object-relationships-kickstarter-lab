class Project

    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def projectbackers
        ProjectBacker.all.select do |projectbacker|
            projectbacker.project == self
        end
    end

    def backers
        projectbackers.map do |projectbacker|
            projectbacker.backer
        end
    end

end