class AddListIdToTasks < ActiveRecord::Migration[5.1]
  def change
  	add_reference :tasks, :lists, foreign_key: true, index: true 
  end
end
