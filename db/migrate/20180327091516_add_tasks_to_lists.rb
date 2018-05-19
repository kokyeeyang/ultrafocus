class AddTasksToLists < ActiveRecord::Migration[5.1]
  def change
    add_reference :lists, :tasks, index: true
  end
end
