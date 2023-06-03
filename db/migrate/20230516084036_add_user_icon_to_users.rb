class AddUserIconToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :User_icon, :string
  end
end
