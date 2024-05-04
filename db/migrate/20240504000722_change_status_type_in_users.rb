class ChangeStatusTypeInUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :status, :string, default: 'active'
  end
end
