# PROBLEM Method Design Recipe

## 1. Describe the Problem

> As a user.
> So that I can manage my time.
> I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

```ruby
reading_time = calculate_reading_time(text)
# text is the given string
# reading_time Returned Iteger From Method
```

## 3. Create Example as Tests

```ruby
calculate_reading_time("")
# => 0

calculate_reading_time("one")
# => 1

calculate_reading_time("ONE-HUNDRED")
# => 1

calculate_reading_time("FOUR-HUNDRED")
# => 2

```

## 4. Implement the behaviour

