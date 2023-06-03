class AddTextToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :text, :string
  end
end
