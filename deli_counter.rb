require 'pry'

# Write your code here.
katz_deli = []


def take_a_number(katz_deli, new_person)
    katz_deli << new_person

    puts "Welcome, #{new_person}. You are number #{katz_deli.length} in line."
end

def line(katz_deli)
    if katz_deli.empty?
        puts "The line is currently empty."
        return
    end

    str_line = "The line is currently:"
    number = 0;
    while number < katz_deli.length do
        # binding.pry
        str_line << " #{(number + 1)}. #{katz_deli[number]}"
        number += 1
    end
    puts str_line
end

def now_serving(katz_deli)
    if katz_deli.empty?
        puts "There is nobody waiting to be served!"
        return
    end

    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
end



# TESTS
# line(katz_deli) #=> "The line is currently: 1. Ada 2. Grace 3. Kent"

# take_a_number(katz_deli, "Ada") #=> Welcome, Ada. You are number 1 in line.
# take_a_number(katz_deli, "Grace") #=> Welcome, Grace. You are number 2 in line.
# take_a_number(katz_deli, "Kent") #=> Welcome, Kent. You are number 3 in line.

# line(katz_deli) #=> "The line is currently: 1. Ada 2. Grace 3. Kent"

# now_serving(katz_deli) #=> "Currently serving Ada."

# line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent"

# take_a_number(katz_deli, "Matz") #=> Welcome, Matz. You are number 3 in line.

# line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent 3. Matz"

# now_serving(katz_deli) #=> "Currently serving Grace."

# line(katz_deli) #=> "The line is currently: 1. Kent 2. Matz"
