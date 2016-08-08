class Repository
  # attr_reader :tasks # but here better to use `all` (as in Ruby on Rails)

  def initialize
    @tasks = []
  end

  def all # Ruby on Rails convention name
    return @tasks
  end

  def find(index) # Ruby on Rails convention name
    @tasks[index]
  end

  def add(task)
    @tasks << task
  end

  def destroy(index) # Ruby on Rails convention name
    @tasks.delete_at(index)
  end
end
