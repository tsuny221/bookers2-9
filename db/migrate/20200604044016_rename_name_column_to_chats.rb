class RenameNameColumnToChats < ActiveRecord::Migration[5.2]
  def change
  	rename_column :chats, :name, :message
  end
end
