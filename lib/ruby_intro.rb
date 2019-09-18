# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # To find sum of all elements in an array
  arr.inject(0, :+)
end


def max_2_sum arr
  # To find sum of largest two elements in an arrray
  case arr.length
    when 0                          #empty array is passed
      return 0
    when 1                          #array has only one element
      return arr.first                  
    else
     return arr.max(2).reduce(:+)
  end
    
end


def sum_to_n? arr, n
  # To find if sum of any two elements in the array equals the given parameter 'n'
  case arr.length
    when 0                          #array is empty
      return false
    when 1                          #array has only one element
      return false
    else
     return arr.uniq.combination(2).any? { |a, b| a + b == n }        
  end
end

# Part 2

def hello(name)
  # String concatenation
  return ("Hello, "+ "#{name}")
end

def starts_with_consonant? s
  # To check if string starts with a consonant
  if (s.match(/\A(?=[^A-Z])/i))          #check for consonant in uppercase 
    return false
  else  
    !!s.match(/\A(?=[^aeiou])/i)         #check for consonant in lower case
  end
end

def binary_multiple_of_4? s
  # To check if string is a binary number which is a multiple of 4
  return false if s.empty? || (s.match(/[^0-1]/))     # check the validity of the string as binary number
  return ((s.to_i(2))%4 == 0)
end


# Part 3

class BookInStock
# This class represents a book  with an ISBN number and a price.
  attr_accessor :isbn, :price
  
  def initialize(isbn,price)
      raise ArgumentError, 'ISBN number cannot be empty' if isbn.empty?                  #raise error if given string is empty
      raise ArgumentError, 'Price of the book cannot be negative' if price.to_f <= 0.00  #raise an error if price given is zero 
                                                                                         #or a negative number
      @isbn=isbn
      @price=price
      
  end  
  
  def price_as_string()
      return "$".concat('%.2f'%price.to_s)
      
  end
  
end
