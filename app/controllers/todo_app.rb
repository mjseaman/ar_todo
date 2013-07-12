require_relative "../models/tasks"

class Todo

  def run(command_line_args)
    #call something in the view
    self.send(command_line_args[0].to_sym, command_line_args[1..-1])
  end

  def add()

    command_line_args[1..-1]
  end

  def delete
  end

  def list
  end

  def complete
  end

end

chore = Todo.new
chore.run(ARGV)

method(parameters)
