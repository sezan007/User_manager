class AddDefaultStatusToUsers < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :status, from: nil, to: 'active'
  end
end
