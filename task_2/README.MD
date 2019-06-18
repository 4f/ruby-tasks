# Rebuild Array

The goal of this task is to patch `Array` class and extend it with method which rebuilds its values

## Requirement
Given the following array of integers
```ruby
array = [
  (1..2).to_a,
  (5...11).to_a,
  (12..18).to_a,
  11
]
```
Write a function `.rebuild!` that should dynamically add a number to each element of an array

## Rules
1. All work should be done in `array.rb` file
2. Ruby version doesn't matter
3. You can't use anything except Ruby standard library. No gems allowed

## Example usage
```ruby
# Example: adds 3 to each element
array.rebuild! do |element|
  element + 3
end
# Expected Result:
# [[4, 5], [8, 9, 10, 11, 12, 13], [15, 16, 17, 18, 19, 20, 21], 14]
```
```ruby
# Example: if two parameters are given the function should add a size of a nested array to each
array.rebuild! do |element, size|
  element + size
end
# Expected result:
# [[3, 4], [11, 12, 13, 14, 15, 16], [19, 20, 21, 22, 23, 24, 25], 15]
```
