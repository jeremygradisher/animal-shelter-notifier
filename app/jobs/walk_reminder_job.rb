class WalkReminderJob < ApplicationJob
  queue_as :default

  def perform(dog)
    # Do something later
    puts "Reminder! Time to walk #{dog.name}"
    # Here you could also send an email or notification
  end
end
