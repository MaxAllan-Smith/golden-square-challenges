# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

> As a user
> So that I can keep track of my tasks
> I want a program that I can add todo tasks to and see a list of them.

> As a user
> So that I can focus on tasks to complete
> I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby

class TodoList
  def initialize
    # Initiliazes the @task list
  end

  def add(task) # => task is a given string
    # Adds a new task to the @task list
  end

  def completed(task)
    # Removes task from @task list
  end

  def list
    # Returns a list of tasks
  end



end

```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# 1 => Returns an empty array
todo_list = TodoList.new
todo_list.list # => []

# 2 => Adds a task to the list
todo_list = TodoList.new
todo_list.add("Clean the dishes")
todo_list.list # => ["Clean the dishes"]

#3 => Adds multiple tasks to the list
todo_list = TodoList.new
todo_list.add("Clean the dishes")
todo_list.add("Wash the car")
todo_list.add("Learn a song on guitar")
todo.list # => ["Clean the dishes", "Wash the car", "Learn a song on guitar"]

#4 => Removes a task from the list
todo_list = TodoList.new
todo_list.add("Clean the dishes")
todo_list.add("Wash the car")
todo_list.add("Learn a song on guitar")
todo_list.completed("Wash the car")
todo_list.list # => ["Clean the dishes", "Learn a song on guitar"]

#5 => Fails when no task to complete exists
todo_list = TodoList.new
todo_list = TodoList.new
todo_list.add("Clean the dishes")
todo_list.add("Wash the car")
todo_list.add("Learn a song on guitar")
todo_list.completed("Make a cup of tea") # <-- Fails "That task does not exist"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

### WRITE THE CODE!

