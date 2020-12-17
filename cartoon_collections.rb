
# accepts this array ["Doc", "Dopey", "Bashful", "Grumpy"] 
# use each_with_index method
# def roll_call_dwarves(array)
#   new = []
#   index = 1
#   while index < array.length
#     array.each_with_index(1) do |index, name|
#       new << yield(array[index, name])
#       i = i + 1
#     end
#   end
#  puts new
# end
# print out each name, in number order, using puts
# 1. Doc
# 2. Dopey
# 3. Bashful
# 4. Grumpy

# def roll_call_dwarves(array)
#   i = 0 
#   while i < array.length 
#     puts "#{i + 1}. #{array[i]}"
#     i += 1 
#   end 
# end

def roll_call_dwarves(array)
  array.each_with_index do | name , index | # https://ruby-doc.org/core-2.7.2/Enumerable.html#method-i-each_with_index
    puts "#{index + 1} #{name}"
  end
end


# planeteer_calls = ["earth", "wind", "fire", "water", "heart"] 
# capitalize each element and add an exclamation point at the end
# use .map or .collect method
def summon_captain_planet(array)# code an argument here
    array.collect do |word| # https://ruby-doc.org/core-2.7.2/Array.html#method-i-map
      word.capitalize + "!" # capitalize first letter and add ! to end of word
    end #### .collect returns array of new elements from code block
end
  # return should be ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"] 
  # .map and .collect are the same method just different names
  # .collect takes an enumerable object and a code block and runs the code
  # block for each element outputting each returned value from the code block.
  # the original object is unchanged unless you use .collect!



# method should tell us if any of the elements are longer than 
# four characters = use .any?
def long_planeteer_calls(array)
  array.any? {|x| x.length > 4} # curly braces instead of do/end
  # .length gives how many characters in a string/word
end
# return value of this method is either true or false, 
# depending on the array it was given as an argument


# look through these strings to find and 
# return the first string that is a type of cheese
# assume that all strings will be lowercase
# use .include method = returns string value instead of printing it
# def find_the_cheese(array)
#   cheese_types = ["cheddar", "gouda", "camembert"]
#   #var = true
#   if array.include?(cheese_types)
#   array.detect {|i| i.is_a?(cheese_types)} 
# end
# list of ingredients does not include cheese, return nil

def find_the_cheese(array)
  cheese_types = ["cheddar", "gouda", "camembert"] # var to look for matches to
  array.find do |yums| # returns the first element which satisfies the given condition in the block
    cheese_types.include?(yums) # seeing if cheese_types var has any matches to our array element (block variable yums)
  end
end
