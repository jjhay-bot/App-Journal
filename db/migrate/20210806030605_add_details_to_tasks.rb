class AddDetailsToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :status, :text
    add_column :tasks, :schedule, :date
  end
end
