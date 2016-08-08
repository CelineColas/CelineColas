class Task
  attr_reader :name

  def initialize(name)
    @name = name
    @done = false
  end

  def done?
    return @done
  end

  def mark_as_done
    @done = true
  end
end
