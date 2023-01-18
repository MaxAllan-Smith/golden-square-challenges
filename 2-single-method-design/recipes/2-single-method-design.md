# PROBLEM 2 Single Method Markdown

# 1. Describe the problem

> As a user
> So that I can improve my grammar
> I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

# 2. Design the method signature

```ruby
text_result = capitalize_string(text)

# 'text' is given as a string.
# 'capitalize_string' Checks that string starts with capital letter and ends with a sentence-ending punctuation mark.
# 'text_result' returned as string.
```

# 3. Create examples as tests

```ruby
capitalize_string("")
# => "Invalid Input: Please Enter Text"

capitalize_string("Hello.")
# => true

capitalize_string("hello.")
# => false

capitalize_string("Hello")
# => false

capitalize_string("Hello mate,")
# => false
```

# 4. Implement the behaviour

WRITE CODE!