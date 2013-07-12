require_relative '../app/models/task'
require 'faker'

10.times do
  task = Task.new(description:Faker::Lorem.sentence(5),complete:false)
  task.save
end
