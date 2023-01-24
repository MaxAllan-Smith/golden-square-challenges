require "todo"

describe "(ToDo) Unit Test:" do
  context "Adding a new task." do
    it "Returns the task" do
      todo = Todo.new("Wash the car")
      expect(todo.task).to eq("Wash the car")
    end
  end

  context "Test for TRUE or FALSE" do
    it "Returns TRUE" do
      todo = Todo.new("Wash the car")
      expect(todo.mark_done!).to eq(true)
    end

    it "Checks for TRUE" do
      todo = Todo.new("Wash the car")
      todo.mark_done!
      expect(todo.done?).to eq(true)
    end
  end
end