# File: lib/todo_list.rb
class TodoList
  def initialize
    @task_list = []
  end

  def add(todo)
    @task_list << todo
  end

  def incomplete
    @task_list.reject do |todo|
      todo.done?
    end
  end

  def complete
    @task_list.select do |todo|
      todo.done?
    end
  end

  def give_up!
    @task_list.map do |todo|
      todo.mark_done!
    end
  end
end