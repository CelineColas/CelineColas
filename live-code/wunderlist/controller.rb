# CONTRACT: the class that is implementing the features
#
# - list all the tasks
# - add a new task
# - mark a task as done
# - remove a task (opt.)
require_relative 'view'

class Controller
  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  # one feature or action (Rails convention name)
  def list_tasks
    tasks = @repository.all
    @view.display_tasks(tasks)
  end

  def add_task
    # ask for the name and store it
    name = @view.ask_for_name
    # instantiate a new task with that name
    task = Task.new(name)
    # add it to the repository
    @repository.add(task)
  end

  def mark_task_as_done
    # ask for the position (index) of the task and store it
    index = @view.ask_for_index
    # find the task
    task = @repository.find(index)
    # mark the task as done
    task.mark_as_done
    # update the task in the repository
    # TODO
  end
end
