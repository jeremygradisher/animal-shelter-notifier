class LoadSolidQueueSchema < ActiveRecord::Migration[7.2]
  def up
    load Rails.root.join("db/queue_schema.rb")
  end

  def down
    # Drop the Solid Queue tables if you need to rollback.
    drop_table :solid_queue_processes if table_exists?(:solid_queue_processes)
    drop_table :solid_queue_jobs if table_exists?(:solid_queue_jobs)
    # (Include any other Solid Queue tables defined in your queue_schema.rb)
  end
end
