# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

## Your test code can go here

pp ordered_by_qualifications(@candidates)

# binding.pry

# pp @candidates
