class AddAcctType < ActiveRecord::Migration[5.0]
  def up
    rename_column :accounts, :type, :accttype
  end
end
