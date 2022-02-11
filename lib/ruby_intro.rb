# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  ret = 0
  arr.each{|x| ret+=x}
  return ret
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length() < 3 
    return sum arr # Return sum of arr if less than 3 elements
  end
  m1, m2 = -Float::INFINITY, -Float::INFINITY # m1, m2 are the first and second maximum elements
  arr.each{|x| if x >= m1; m2, m1 = m1, x elsif x>=m2; m2 = x end} # Track m1 and m2 throught arr
  return m1 + m2 # Return sum of m1 and m2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  ref = Set.new # Use a Set to store and search for compliment
  arr.each{|x| if ref.include?(n-x); return true else ref.add(x) end} # For each element search for it's compliment
  return false # Return false if no pair was found
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return s.match(/^[b-df-hj-nq-tv-zB-DF-HJ-NQ-TV-Z]/) ? true : false # REGEX Match starting (^) with Consonant letter
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return s.match(/^[01]+$/) ? s.to_i(2)%4 == 0 : false # REGEX Match if valid binary and check if divisble by 4
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError.new("ISBN Invalid") if isbn.length()==0 
    raise ArgumentError.new("Price Invalid") if price<=0
    @isbn = isbn
    @price = price
  end
  def price_as_string
    return "$#{'%.2f' % price}" # Format price to 2 decimal points
  end
end
