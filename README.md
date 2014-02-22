# Credit Card Finder Site

This app helps users find a credit card. Users input their credit card features and then this app compares the offers of other cards and calculates costs/rewards and balances.

The site is runs on Heroku. It is a Rails app using unicorn and postgresql.

Github stores the Rails code.

## General Structure
Testing inside of Sublime relies on [Zeus](https://github.com/burke/zeus) and [Sublime Text 2 Ruby Test](https://github.com/maltize/sublime-text-2-ruby-tests/). For this to work setting must be changed. Remove this if using spork:

1. In Sublime Text 2, go to Preferences|Browse Packages.
2. Open the RubyTest|RubyTest.sublime-settings
3. Add "zeus" to the run_rspec command
  * "run_rspec_command": "**zeus** rspec {relative_path}",
  * "run_single_rspec_command": "**zeus** rspec {relative_path} -l{line_number}",


 
## Notable Updates


## Database
