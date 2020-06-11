class Project
    attr_accessor :name,:description,:owner,:tasks

    def initialize(name,description,owner)
        @name = name
        @description = description
        @owner = owner
        @tasks = []
    end

    def print_tasks
        @tasks.each {|task| puts task}
        self
    end

    def add_tasks task
        @tasks << task
        self
    end

    def elevator_pitch
        puts "#{@name}, #{@description}"
    end

end

project1 = Project.new("Project 1", "description 1","David P")
project1.elevator_pitch
project1.add_tasks("play xbox").add_tasks("sleep")
project1.print_tasks