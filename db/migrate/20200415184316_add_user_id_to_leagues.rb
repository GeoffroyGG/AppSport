class AddUserIdToLeagues < ActiveRecord::Migration[6.0]
  def change
    add_column :leagues, :user_id, :integer
  end
end
