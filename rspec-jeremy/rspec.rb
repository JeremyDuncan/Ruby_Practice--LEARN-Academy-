require 'date'
# Challenge: Tasklist with TDD
# For each story:
# Copy the story into your RSpec file as a comment
# Write the test(s) that class/method tests must pass
# Then run the test(s) and see that they fail
# Then implement the class/method, with comments, so that it passes the tests one at a time
# User Stories
# Story: As a developer, I can create a Task.
class Task
  attr_accessor :title, :description, :due_date
  attr_reader :progress

  def initialize
    @title = 'no title added'
    @description = 'no description added'
    @progress = 'in progress'
    @due_date = 'no due date'
  end

  def deadline(date)
    @due_date = "#{date.mon}-#{date.mday}-#{date.year}"
  end

  def mark_done
    @progress = 'complete'
  end
end

class TaskList
  attr_accessor :to_do

  def initialize
    @to_do = []
  end

  def show_complete
    completed = nil
    output = []

    completed = @to_do.select { |i| i.progress == 'complete' }
    completed.each do |_key|
      output << _key.title
    end
    output
  end

  def show_incomplete
    completed = nil
    output = []

    completed = @to_do.select { |i| i.progress == 'in progress' }
    completed.each do |_key|
      output << _key.title
    end
    output
  end
end

# Story: As a developer, I can give a Task a title and retrieve it.

# Story: As a developer, I can give a Task a description and retrieve it.

# Story: As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.

# Story: As a developer, when I print a Task that is done, its status is shown.

# Story: As a developer, I can add all of my Tasks to a TaskList.

# Story: As a developer with a TaskList, I can print the completed items.

# Story: As a developer with a TaskList, I can print the incomplete items.

# Stretch: Due Date
# Story: As a developer, I can give a Task a due date. Hint: Use the built-in Ruby Date class.

# Story: As a developer with a TaskList, I can list all the not completed items that are due today.

# Story: As a developer with a TaskList, I can list all the not completed items in order of due date.

# Story: As a developer with a TaskList with and without due dates, I can list all the not completed items in order of due date, and then the items without due dates.
