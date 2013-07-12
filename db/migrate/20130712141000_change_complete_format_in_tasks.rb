require_relative '../config'

class ChangeCompleteFormatInTasks < ActiveRecord::Migration
  def self.up
   change_column :tasks, :complete, :binary
  end

  def self.down
   change_column :tasks, :complete, :string
  end
end
