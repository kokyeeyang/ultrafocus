class RenameUserFromLists < ActiveRecord::Migration[5.1]
  def change
  	rename_column :lists, :users_id, :user_id  
  end
end

