require_relative '../app/models/task'
require 'faker'

task = Task.new(description: Faker::Lorem.sentence(5), complete: false)
task.save
