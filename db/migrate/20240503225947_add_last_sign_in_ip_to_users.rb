class AddLastSignInIpToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :last_sign_in_ip, :datetime
  end
end
