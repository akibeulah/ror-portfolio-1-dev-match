class CreateUserLoginCount < ActiveRecord::Migration[6.0]
  def change
    create_table :user_login_counts do |t|
      t.integer :user_id
      t.string :email
      t.integer :login_count

      t.timestamps
    end
  end
end
