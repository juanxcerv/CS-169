# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  i = arr.length - 1
  total = 0
  if i == 0
    0
  else
    while i > -1
      total = total + arr[i]
      i = i - 1
    end
    total
  end
end

def max_2_sum arr
  if arr.length == 0
    0
  elsif arr.length == 1
    arr.max
  else
    combinations = arr.combination(2).to_a
    biggest_combo = combinations.max
    biggest_combo[0] + biggest_combo[1]
  end
end

def sum_to_n? arr, n
  # checks to see if any two numbers create a sum of n
  if arr.length == 0 
    false
  else
    arr.combination(2).any? {|x, y| x + y == n }
  end
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    @isbn, @price = isbn, price
    if @isbn == '' || price <= 0
      raise ArgumentError
    end
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(value)
    @isbn = value
  end
  
  def price=(value)
    @price = value
  end
  
  def price_as_string()
    return '$' + sprintf('%.2f', @price)
  end
    
end
