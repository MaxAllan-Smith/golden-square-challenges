# Problems: TODO List

## 1. Describe The Problem

> As a user
> So that I can keep track of my tasks
> I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

```ruby
result = task_checker(input_text)

# 'input_text' takes a string as input for the method.
# 'result' will return a TRUE or FALSE depending on whether it finds '#TODO' in the string.
```

## 3. Create Examples as Test

```ruby
task_checker("")
# => "Invalid Input: No String Found"

task_checker("#TODO - Brush Teeth")
# => true

task_checker(" - Brush Hair")
# => false
```

## 4. Implement the Behaviour

WRITE THE CODE!!