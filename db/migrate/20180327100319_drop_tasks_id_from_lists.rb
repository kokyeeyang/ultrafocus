class DropTasksIdFromLists < ActiveRecord::Migration[5.1]
  def change
  	remove_reference :lists, :tasks, index: true
  	add_reference :lists, :users, foreign_key: true, index: true
  end
end
