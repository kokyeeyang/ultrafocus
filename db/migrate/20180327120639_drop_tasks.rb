class DropTasks < ActiveRecord::Migration[5.1]
  def change
  	drop_table :tasks do |t|
  		t.string "description"
    	t.string "stringart_date"
    	t.string "end_date"
    	t.bigint "lists_id"
    	t.index ["lists_id"], name: "index_tasks_on_lists_id"
  	end

  end
end
