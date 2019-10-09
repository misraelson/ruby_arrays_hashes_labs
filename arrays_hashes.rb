require 'benchmark'

def find_repeated
  my_hash = {}
  my_arr = [1, 2, 3, 3, 4, 5, 6, 7, 8, 9, 10]
  my_arr.each do |num|
    my_hash[num] = num
  end
  p my_hash
end

# find_repeated

# LAB 1
# Given a string such as "abcd". Generate an array that gives every 2-letter combination that are adjacent so your code will generate:
#["ab", "bc", "cd"]

def adj_let(str)
  index = 0
  adjArray = []
  while index < str.length do
    if str[index + 1] 
      adjArray.push("#{str[index]}#{str[index+1]}")
    end
    index += 1
  end
  p adjArray
end

# adj_let "ab23 56fg"

# LAB 3 ARRAY OF ARRAYS
# Write a piece of code that will take that array and give back an array of arrays with each element multiplied by itself so you will get back:

def array_of_array_multi(array)
  # YOUR CODE HERE
  multiArr = array.map{ |arr| arr.map{ |num| num * num }  }
  p multiArr
  p array
  # array
end

# array_of_array_multi([[4, 9, 16], [25, 36, 49], [36, 49, 64]])
# array_of_array_multi([[2,3,4], [5,6,7], [6,7,8]])

# LAB 5? HASH OF INFORMATION
# Ask the user for personal information: first name, last name, city of birth and age. Then store that information in a hash. After that loop through the hash and display the results, for example

def hash_of_info
  info_hash = {}
  p "What's your first name?"
  info_hash["first name"] = gets.chomp.capitalize
  p "What's your last name?"
  info_hash["last name"] = gets.chomp.capitalize
  p "Where are you from?"
  info_hash["city"] = gets.chomp.capitalize
  p "What's your age?"
  info_hash["age"] = gets.chomp
  info_hash.each do |key, value| p "Your #{key} is #{value}" end 
end

# hash_of_info

# LAB 6 ==> Find The Repeated Number

big_array = Array.new(6000000).fill{ |i| i + 1 }
big_array[5990000] = 1000


def find_duplicate(array)
  my_hash = {}
  array.each do |num|
    if my_hash.has_key?(num)
      p "duplicate is #{num}"
      break
    else
      my_hash[num]
      my_hash[num] = num
    end
  end
end

puts Benchmark.measure {
find_duplicate(big_array)
}
