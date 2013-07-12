require_relative '../../db/config'

class Task < ActiveRecord::Base
  validates :description, presence: true

  def self.list
    self.all
  end

  def self.add(description, complete = false)
    task = Task.new(description: description, complete: complete)
    task.save
  end

  def self.delete(id)
    self.delete(id)
  end

  def delete
    self.class.delete(self.id)
  end

  def self.set_complete(id)
    self.find(id).complete = true
  end

end
