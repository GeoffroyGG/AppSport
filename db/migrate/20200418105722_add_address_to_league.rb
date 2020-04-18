class AddAddressToLeague < ActiveRecord::Migration[6.0]
  def change
    add_column :leagues, :address, :string
  end
end
