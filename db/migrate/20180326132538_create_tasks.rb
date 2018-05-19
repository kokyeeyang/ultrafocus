class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
    	t.string :description
    	t.string :stringart_date
    	t.string :end_date

    	t.timestamp
    end
  end
end
