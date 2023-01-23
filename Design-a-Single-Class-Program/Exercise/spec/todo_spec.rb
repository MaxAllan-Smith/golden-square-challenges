require "todo"

describe TodoList do
  context "Given no task" do
    it "has an empty list" do
      todo_list = TodoList.new
      expect(todo_list.list).to eq([])
    end
  end

  context "Given a task" do
    it "has the task in the list" do
      todo_list = TodoList.new
      todo_list.add("Clean the dishes")
      expect(todo_list.list).to eq(["Clean the dishes"])
    end
  end

  context "Given multple tasks" do
    it "has all tasks in the list" do
      todo_list = TodoList.new
      todo_list.add("Clean the dishes")
      todo_list.add("Wash the car")
      todo_list.add("Learn a song on guitar")
      expect(todo_list.list).to eq(["Clean the dishes", "Wash the car", "Learn a song on guitar"])
    end
  end

  context "Delete a given task" do
    it "removes the given task from the list" do
      todo_list = TodoList.new
      todo_list.add("Clean the dishes")
      todo_list.add("Wash the car")
      todo_list.add("Learn a song on guitar")
      todo_list.completed("Wash the car")
      expect(todo_list.list).to eq(["Clean the dishes", "Learn a song on guitar"])
    end
  end

  context "Throws Error" do
    it "When given task to remove in the list does not exist" do
      todo_list = TodoList.new
      todo_list.add("Clean the dishes")
      todo_list.add("Wash the car")
      todo_list.add("Learn a song on guitar")
      expect{ todo_list.completed("Make a cup of tea") }.to raise_error("That task does not exist")
    end
  end
end