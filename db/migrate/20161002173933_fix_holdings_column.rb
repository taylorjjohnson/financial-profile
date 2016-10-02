class FixHoldingsColumn < ActiveRecord::Migration[5.0]
  def change
    change_column :accounts, :holdings, :text
  end
end
