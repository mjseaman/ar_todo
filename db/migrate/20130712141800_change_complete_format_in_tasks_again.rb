require_relative '../config'

class ChangeCompleteFormatInTasksAgain < ActiveRecord::Migration
  def self.up
   change_column :tasks, :complete, :boolean
  end

  def self.down
   change_column :tasks, :complete, :binary
  end
end
