require_relative "../models/tasks"

class Todo

  def run(command_line_args)
    #call something in the view
    self.send(command_line_args[0].to_sym, command_line_args)
  end

  def add(command_line_args)
    Task.add(command_line_args[1..-1].join(' '))
    # call something in the view
  end
  
  def delete(command_line_args)
    Task.delete(command_line_args[1].to_i)
    # call something in the view
  end

  def list
    Task.list
    # call something in the view
  end

  def complete(command_line_args)
    Task.set_complete(command_line_args[1].to_i)
    # call something in the view
  end

end

chore = Todo.new
chore.run(ARGV)
