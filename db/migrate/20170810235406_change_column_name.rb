class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :lists, :private, :private?
  end
end
