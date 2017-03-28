class AddNicknameToUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :role, :string, default: "member"
    add_column :users, :nickname, :string
  end
end
