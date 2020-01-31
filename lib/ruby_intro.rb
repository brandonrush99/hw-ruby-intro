# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  s = 0
  for x in arr
    s = s + x
  end
  return s
end

def max_2_sum(arr)
  temp = arr.max(2)
  return temp.inject(0, :+)
end

def sum_to_n?(arr, n)
  for x in (0...arr.size)
    for y in (x+1...arr.size)
      if(arr[x] + arr[y] == n)
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant?(s)
  if(s.strip.empty?)
    return false
  end 
  if(s[0] =~ /[[:alpha:]]/)
    if(s.downcase =~ /[aeiou]/) != 0
      return true
    end
  end
  return false
end

def binary_multiple_of_4?(s)
  if(s.delete("01") != "" or s.empty?)
    return false
  end
  if(Integer("0b" + s) % 4 == 0)
    return true
  end 
  return false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    raise ArgumentError, 'Argument must not be empty' unless not(isbn.empty?)
    raise ArgumentError, 'Argument must be greater than 0' unless price > 0
    
    @isbn = isbn
    @price = price
    
  end
  
  def price_as_string
    "$%.2f" % [@price]
  end
end

