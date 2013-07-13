require_relative "../models/task"
require_relative "../views/todo_view"

class Todo

  def run(command_line_args)
    #call something in the view
    self.send(command_line_args[0].to_sym, command_line_args)
  end

  def add(command_line_args)
    print_out Task.add(command_line_args[1..-1].join(' '))
    # call something in the view
  end
  
  def delete(command_line_args)
    Task.delete(command_line_args[1].to_i)
    print_out "Deleted task #{command_line_args[1].to_i}!"
    # call something in the view
  end


  def list(nothin)
    my_list = ''
    Task.list.each do |item|
      my_list << "[#{(item.complete) ? "X" : " "}]#{item.description}"
    end
    print_out my_list
    # call something in the view
  end

  def complete(command_line_args)
    print_out Task.set_complete(command_line_args[1].to_i)
    # call something in the view
  end

end

chore = Todo.new
chore.run(ARGV)
