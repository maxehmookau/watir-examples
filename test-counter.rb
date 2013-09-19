# Start Here
require 'watir-webdriver' # Include the watir gem. This lets us use watir.
b = Watir::Browser.new    # Create a new browser instance and open it. By default this is Firefox.

# Define two variables to count how many tests passed/failed
passing_tests = 0
failing_tests = 0

# Visit a page
b.goto 'http://boxuk.com' # Needs to be a full URL. (http://)

# Check something...
what_were_looking_for = 'Agile Software Consultants & Developers'

# This time, instead of outputting an error, increment a counter.
if b.text.include?(what_were_looking_for)
  passing_tests = passing_tests + 1
else
  failing_tests = failing_tests + 1
end

# Add some more tests here...
# Now output the final score!

puts "Passing tests: #{ passing_tests }"
puts "Failing tests: #{ failing_tests }"

puts "ALL TESTS PASS!" if failing_tests.zero?

# Now go and run this example!
# bundle exec ruby test-counter.rb
