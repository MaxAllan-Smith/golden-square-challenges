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
class Program
  def initialize

  end

  def view_contacts
    
  end

  def view_diary_entry()

  end

  def view_todo_completed

  end

  def view_todo_incompleted

  end
end
```

```ruby
class Diary
  def initialize(diaryTitle, diaryContents)

  end

  def diary_title

  end

  def diary_contents

  end

  def readingTime(wpm, minutes)

  end
end
```

```ruby
class DiaryEntry
  def initialize
  end

  def add

  end

  def delete

  end

  def modify

  end
end
```

```ruby
class Contacts
  def initialize(personName, mobileNumber)

  end

  def person_name

  end

  def mobile_number

  end
end
```

```ruby
class ContactsEntry
  def initialize

  end

  def add

  end

  def delete

  end

  def modify

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