class RemoveTypeToAccounts < ActiveRecord::Migration[6.0]
  def change
    remove_column :accounts, :type, :string
  end
end
