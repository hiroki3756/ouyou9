class AddColumnToChat < ActiveRecord::Migration[5.2]
  def change
    add_column :chats, :room_id, :string
  end
end
