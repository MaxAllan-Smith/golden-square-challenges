require 'todo'
require 'todo_list'

describe "Integration:" do
  context "Incomplete List:" do
    it "Adds a new task to the incomplete list!" do
      task1 = Todo.new("Wash the car")
      new_todo_list = TodoList.new
      new_todo_list.add(task1)
      expect(new_todo_list.incomplete).to eq([task1])
    end

    it "Adds multiple tasks to the incomplete list" do
      task1 = Todo.new("Wash the car")
      task2 = Todo.new("Fix my phone")
      new_todo_list = TodoList.new
      new_todo_list.add(task1)
      new_todo_list.add(task2)
      expect(new_todo_list.incomplete).to eq([task1, task2])
    end
  end

  context "Complete List:" do
    it "Adds a new completed task to the comepleted list" do
      task1 = Todo.new("Wash the car")
      todo_list = TodoList.new
      task1.mark_done!
      todo_list.add(task1)
      expect(todo_list.complete).to eq([task1])
    end

    it "Adds multiple completed tasks to the completed list" do
      task1 = Todo.new("Wash the car")
      task2 = Todo.new("Fix my phone")
      task3 = Todo.new("Take Mum to work")

      todo_list = TodoList.new

      task1.mark_done!
      task2.mark_done!
      task3.mark_done!

      todo_list.add(task1)
      todo_list.add(task2)
      todo_list.add(task3)

      expect(todo_list.complete).to eq([task1, task2, task3])
    end

    it "Adds two tasks to complete & one task to incomplete" do
      task1 = Todo.new("Wash the car")
      task2 = Todo.new("Fix my phone")
      task3 = Todo.new("Take Mum to work")

      todo_list = TodoList.new

      task1.mark_done!
      task3.mark_done!

      todo_list.add(task1)
      todo_list.add(task2)
      todo_list.add(task3)

      expect(todo_list.complete).to eq([task1, task3])
      expect(todo_list.incomplete).to eq([task2])
    end
  end

  context "Give Up List:" do
    it "Add all tasks to Give Up list, marking them as Done!" do
      task1 = Todo.new("Wash the car")
      task2 = Todo.new("Fix my phone")
      task3 = Todo.new("Take Mum to work")
      task4 = Todo.new("Take Rebecca to the station")

      todo_list = TodoList.new

      todo_list.add(task1)
      todo_list.add(task2)
      todo_list.add(task3)
      todo_list.add(task4)

      todo_list.give_up!

      expect(todo_list.complete).to eq([task1, task2, task3, task4])
    end
  end
end