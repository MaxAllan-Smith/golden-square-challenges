class TodoList
  def initialize
    @task = []
  end

  def add(task)
    @task << task
  end

  def completed(task)
    fail("That task does not exist") unless @task.include? task
    @task.delete(task)
  end

  def list
    return @task
  end
end