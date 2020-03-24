class AddEmailToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :leagues , :email, :string
  end
end
