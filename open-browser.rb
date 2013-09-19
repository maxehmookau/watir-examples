# Start Here
require 'watir-webdriver' # Include the watir gem. This lets us use watir.
b = Watir::Browser.new    # Create a new browser instance and open it. By default this is Firefox.

# Visit a page
b.goto 'http://boxuk.com' # Needs to be a full URL. (http://)

# Check something...
what_were_looking_for = 'Agile Software Consultants & Developers'

if b.text.include?(what_were_looking_for)
  puts 'Found the specified string on the page.'
else
  puts 'Failed to find the specified string on the page.'
end

# Now go and run this example!
# bundle exec ruby open-browser.rb
