# ToDo List Diary (Design)

## Describe the problem (User Stories)

> As a user
> So that I can record my experiences
> I want to keep a regular diary

> As a user
> So that I can reflect on my experiences
> I want to read my past diary entries

> As a user
> So that I can reflect on my experiences in my busy day
> I want to select diary entries to read based on how much time I have and my reading speed

> As a user
> So that I can keep track of my tasks
> I want to keep a todo list along with my diary

> As a user
> So that I can keep track of my contacts
> I want to see a list of all of the mobile phone numbers in all my diary entries

## Design the Class System

```ruby
class Diary
  def initialize(diaryTitle, diaryContents, personName, mobileNumber)

  end

  def diary_title

  end

  def diary_contents

  end

  def person_name

  end

  def mobile_number

  end

  def add

  end

  def delete

  end

  def view

  end

  def readingTime

  end
end
```

```ruby
class Todo
  def initialize(task)

  end

  def task
    
  end

  def mark_done!

  end

  def done?

  end
end
```

```ruby
class TodoList
  def initialize

  end

  def add(todo)

  end

  def incomplete

  end

  def complete

  end

  def give_up!

  end
end
```

## Create Examples as Itegration Tests

```ruby

```

## Design Examples as Unit Tests

```ruby

```

## Implement the Behaviour

###  ! WRITE THE CODE !