##
# The factorial number program finds the factorial of an inputted number
#
# @author  Cameron Teed
# @version 1.0
# @since   2021-05-06
# frozen_string_literal: true

def factorial_function(some_int)
  # Special case if the factorial is 1 or 0
  if [0, 1].include?(some_int)
    # Returns one
    1
  else
    # Finds the factorial of the inputted number
    some_int * factorial_function(some_int - 1)
  end
end
begin
  # Asks user to input an integer
  puts 'Input an integer: '
  # Gets user input
  user_int = gets.chomp.to_i

  # Prints out the number and its factorial
  puts
  puts "The factorial of #{user_int} is #{factorial_function(user_int)}"
  puts
  puts 'Done'
rescue StandardError
  # If the input cannot be converted into a int, tell the user that
  # they need to input the correct numbers
  puts 'Invalid input. Please try again.'
end
