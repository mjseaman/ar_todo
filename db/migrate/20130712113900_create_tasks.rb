require_relative '../config'

class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.string :complete
      t.timestamp
    end
  end
end
