# VIEW: I'm in charge of 2 things:
# 1. display stuff to the user
#   through the terminal via `puts`
#   browser via web page (HTML)
# 2. ask the user for input
#   through the terminal via `gets`
#   browser via a form tag (HTML)
class View
  def ask_for_name
    puts "What's the name of your task?"
    return gets.chomp
  end

  def ask_for_index
    puts "What's the task index?"
    return gets.chomp.to_i - 1
  end

  # create a method that displays all the tasks
  def display_tasks(tasks) # we need the tasks
    # CONTRACT:
    # [x] buy croissants
    # [ ] buy coffee
    tasks.each_with_index do |task, index|
      # if task.done?
      #   puts "[x] #{task.name}"
      # else
      #   puts "[ ] #{task.name}"
      # end

      status = task.done? ? 'x' : ' '
      puts "[#{status}] #{index + 1}. #{task.name}"
    end
  end
end
