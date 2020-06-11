require_relative 'project' # include our Project class in our spec file
RSpec.describe Project do  
    before(:each) do 
        @project1 = Project.new('Project 1', 'description 1','David P')
        @project2 = Project.new('Project 2', 'description 2','David P') 
        # create a new project and make sure we can set the name attribute
    end
    it 'has a getter and setter for name attribute' do
        @project1.name = "Changed Name" 
        # this line would fail if our class did not have a setter method
        expect(@project1.name).to eq("Changed Name") 
        # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
    end

    it 'has a getter and setter for owner attribute' do
        @project1.owner = "Owner name"
        expect(@project1.owner).to eq("Owner name")
    end

    it 'has a method elevator_pitch to explain name and description' do
        expect(@project1.elevator_pitch).to eq("Project 1, description 1,David P")
        expect(@project2.elevator_pitch).to eq("Project 2, description 2,David P")
    end

    it 'has a method tasks to return the tasks for each project' do
        @project1.add_tasks("play_xbox")
        expect(@project1.tasks.include?("play_xbox")).to eq(true)
        @project1.add_tasks("sleep")
        expect(@project1.tasks.include?("sleep")).to eq(true)
    end

    it 'has a method print_tasks to print the tasks for each project' do
        @project1.add_tasks("play_xbox").add_tasks("sleep")
        expect{@project1.print_tasks}.to output ("play xbox\nsleep\n").to_stdout
    end
end