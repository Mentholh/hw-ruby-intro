# When done, submit this entire file to the autograder.

# Part 1

def sum arr
#Define a method sum(array) that takes an array of integers as an argument and returns the sum of its elements. For an empty array it should return zero. Run associated tests via: $ rspec spec/part1_spec.rb:5
  sumnum = 0
  arr.each {|a| sumnum+=a}
  sumnum
end

def max_2_sum arr
#Define a method max_2_sum(array) which takes an array of integers as an argument and returns the sum of its two largest elements. For an empty array it should return zero. For an array with just one element, it should return that element. Run associated tests via: $ rspec spec/part1_spec.rb:23
  if arr.size == 0
    sumnum = 0
  elsif arr.size == 1
    sumnum = sum(arr)
  else 
    sorted = arr.sort
	  top = sorted[-2..sorted.size] 
	  sumnum = sum(top)
  end
	return sumnum
end

def sum_to_n? arr, n
#Define a method sum_to_n?(array, n) that takes an array of integers and an additional integer, n, as arguments and returns true if any two elements in the array of integers sum to n. sum_to_n?([], n) should return false for any value of n, by definition. Run associated tests via: $ rspec spec/part1_spec.rb:42
  if arr.size == 0
    result = false
  elsif arr.size == 1
    result = false
  else 
    combi = arr.combination(2).to_a
    combisum = Array.new
    combi.each {|a| combisum << sum(a)}
    result = combisum.include?(n)
  end
  return result
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
