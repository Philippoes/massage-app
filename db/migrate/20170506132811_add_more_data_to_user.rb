class AddMoreDataToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :phone, :integer
    add_column :users, :email, :string
    add_column :users, :pricerange, :integer
  end
end
