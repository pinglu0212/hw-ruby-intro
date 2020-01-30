# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size == 0    # no number case
    return 0
  elsif arr.size == 1 # only one number case
    return arr[0]
  else                # general case
    arr.sort!;
    arr.reverse!;
    return (arr.at(0)+arr.at(1));
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  until arr.empty?
    if arr.include? n - arr.pop
      break
    end
  end
  arr.any?
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.size == 0  # no letter
    return false
  end
  _constr = Array["a","e","i","o","u"]
  str = s.dup
  str.downcase!
  _start = str[0]
  if _start < "a" || _start > "z"
    return false
  end
  return !_constr.include?(_start)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s == "0" || (/^[01]+[0][0]$/ =~ s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  
  def initialize isbn, price
    if isbn.empty? || price <= 0
      raise ArgumentError, "ISBN cannot be empty and price is more than $0"
    end
    @isbn, @price = isbn, price
  end
  
  def price_as_string
    "$%0.2f" % [@price]
  end

end