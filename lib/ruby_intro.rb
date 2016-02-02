# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  i = 0
  for j in arr
    i+=j
  end
  i 
end

def max_2_sum arr
  if not arr.any?
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  arr.reverse.first(2).sum
end

def sum_to_n? arr, n
  if not arr.any? and n == 0
    return true
  end
  arr.sort!
  new_arr = arr.combination(2).detect { |x,y| x + y == n}
  return false if new_arr.nil?
  return true
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  s =~ /\A(?=[a-z])(?=[^aeiou])/i
end

def binary_multiple_of_4? s
  if s == '0'
    return true
  end
  s =~ /^[10]*00$/
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if (not isbn.is_a?(String)) or isbn == ''
      raise ArgumentError.new("ISBN is invalid")
    end
    if (not price.is_a?(Numeric)) or  price <= 0
      raise ArgumentError.new("Price is invalid")
    end
    @isbn = isbn
    @price = price
  end 
  
  def isbn
    @isbn
  end
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  
  def price
    @price
  end
  def price=(new_price)
    @price = new_price
  end
  
  def price_as_string
    "$%.2f" % @price
  end
end
