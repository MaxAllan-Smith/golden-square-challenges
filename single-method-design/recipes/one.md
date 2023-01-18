# PROBLEM Method Design Recipe

## 1. Describe the Problem

> As a user.
> So that I can manage my time.
> I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

```ruby
reading_time = calculate_reading_time(text)
# * text is a string with words in it
# * reading_time is a integer representing minutes
```

