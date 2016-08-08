# This is your software entry point
# This is the file we call: $ ruby app.rb
# It's only purpose is to:
# - load the files we need
# - instantiate anything that is required to have a Router instance
# - call run on the router instance
require_relative 'router'
require_relative 'task'
require_relative 'repository'
require_relative 'controller'

repository = Repository.new
controller = Controller.new(repository)
router     = Router.new(controller)

# First step: try to play with your model

# croissants = Task.new("Buy croissants")
# croissants.mark_as_done
# p croissants

# Second step: try to play with your repository

# repository.add(croissants)
# p repository

# coffee = Task.new("Buy coffee")
# repository.add(coffee)

# p repository.all
# p repository.find(0)
# p repository.destroy(0)

# Final step: start your software by running the router
router.run
