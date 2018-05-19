class AddAvatarToLists < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :avatar, :string
  end
end
