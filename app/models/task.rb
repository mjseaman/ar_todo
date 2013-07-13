require_relative '../../db/config'

class Task < ActiveRecord::Base
  validates :description, presence: true

  def self.list
    self.all
  end

  def self.add(description, complete = false)
    task = Task.new(description: description, complete: complete)
    task.save
    task.description
  end

  def self.delete(id)
    self.destroy(id)
  end

  def delete
    self.class.destroy(self.id)
  end

  def self.set_complete(id)
    task = self.find(id)
    task.complete = true
    task.save
    self.find(id).description + " COMPLETE!"
  end

end
