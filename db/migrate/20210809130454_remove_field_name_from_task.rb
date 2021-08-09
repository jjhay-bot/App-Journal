class RemoveFieldNameFromTask < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :status, :text
  end
end
