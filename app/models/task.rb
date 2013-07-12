require_relative '../../db/config'

class Task < ActiveRecord::Base
  validates :description, presence: true

  def self.list

  end

  def self.add(description)
    
  end

  def self.delete(id)
  
  end

  def delete

  end

  def set_complete
    
  end

end
