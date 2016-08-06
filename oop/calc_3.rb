# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

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

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end

  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:
puts "Testing  >>> "
simplecal = SimpleCalculator.new
fancycal = FancyCalculator.new
bangcal = WhizBangCalculator.new

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

puts "Testing whizbangcalculator >>>"
puts

if bangcal.add(5, 5) == 10
  puts "pass!"
else
  puts "fail!"
end

if bangcal.subtract(5, 5) == 0
  puts "pass!"
else
  puts "fail!"
end

if bangcal.multiply(5, 5) == 25
  puts "pass!"
else
  puts "fail!"
end

if bangcal.divide(5, 5) == 1
  puts "pass!"
else
  puts "fail!"
end

if bangcal.square_root(25) == 5
  puts "pass!"
else
  puts "fail!"
end

if bangcal.hypotenuse(3,4) == 5
  puts "pass!"
else
  puts "fail!"
end

if bangcal.exponent(2,3) == 8
  puts "pass!"
else
  puts "fail!"
end
