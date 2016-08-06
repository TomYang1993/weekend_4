# Below, we have two types of calculators. The simple one can perform basic arithmetic,
# while the fancy one can also do square roots in addition to basic arithmetic.
# There is nothing wrong with the code below per se, but there is duplication
# between the two classes, since they each contain four identical methods.
# This is generally considered to be a code design flaw, since there may come
# a time where we decide to change how these methods work, and we may accidentally
# update the methods in one class, and forget to update them in the other, and our
# two classes become out of sync. This known as the DRY principle, that is:
# Don't Repeat Yourself.
# There are a number of techniques that we can use to fix this example. One is
# a fundamental concept in OOP known as Inheritance. Your exercise is to research
# Inheritance in Ruby, and use it to remove the duplication (or DRY up) the code
# below. You must also write the driver code to test your classes.

class SimpleCalculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class FancyCalculator < SimpleCalculator
  def square_root(number)
    Math.sqrt(number)
  end
end

# Write your own driver code below:

puts "Testing Inheritance >>> "
simplecal = SimpleCalculator.new
fancycal = FancyCalculator.new

if simplecal.add(2, 5) == 7
  puts "pass!"
else
  puts "fail!"
end

if simplecal.subtract(7, 1) == 6
  puts "pass!"
else
  puts "fail!"
end

if simplecal.multiply(2, 5) == 10
  puts "pass!"
else
  puts "fail!"
end

if simplecal.divide(10, 2) == 5
  puts "pass!"
else
  puts "fail!"
end

if fancycal.add(1, 5) == 6
  puts "pass!"
else
  puts "fail!"
end

if fancycal.subtract(6, 5) == 1
  puts "pass!"
else
  puts "fail!"
end

if fancycal.multiply(1, 5) == 5
  puts "pass!"
else
  puts "fail!"
end

if fancycal.divide(6, 3) == 2
  puts "pass!"
else
  puts "fail!"
end

if fancycal.square_root(16) == 4
  puts "pass!"
else
  puts "fail!"
end
