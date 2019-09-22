class RemoveLoginCountFromUserTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :login_count
  end
end
