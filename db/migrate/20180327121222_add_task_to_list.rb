class AddTaskToList < ActiveRecord::Migration[5.1]
  def change
  	add_column :lists, :task1, :string
  	add_column :lists, :task2, :string
  	add_column :lists, :task3, :string
  	add_column :lists, :task4, :string
  	add_column :lists, :task5, :string
  end
end
