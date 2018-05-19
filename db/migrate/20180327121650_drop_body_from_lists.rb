class DropBodyFromLists < ActiveRecord::Migration[5.1]
  def change
  	remove_column :lists, :body, :text
  end
end
