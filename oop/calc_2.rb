# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module Basic_arithmatic
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

class SimpleCalculator
  include Basic_arithmatic

end

class FancyCalculator
  include Basic_arithmatic

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:
puts "Testing Module Mixin >>> "
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
