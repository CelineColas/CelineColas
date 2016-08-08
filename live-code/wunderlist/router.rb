class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      # display the menu
      display_menu

      # ask for the action
      action = ask_for_action

      # dispatching the action
      dispatch_action(action)
    end
  end

  private

  def display_menu
    puts "Things you can do:"
    puts "1. List all the tasks"
    puts "2. Create a new task"
    puts "3. Mark a task a done"
  end

  def ask_for_action
    puts "What's your choice?"
    action = gets.chomp.to_i

    puts "You chose the action number: #{action}"
    return action
  end

  def dispatch_action(action)
    case action
    when 1
      @controller.list_tasks
    when 2
      @controller.add_task
    when 3
      @controller.mark_task_as_done
    else
      puts 'Duh! No action, sorry.'
    end
  end
end
