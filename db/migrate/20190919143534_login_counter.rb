class LoginCounter < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :login_count, :integer
  end
end
