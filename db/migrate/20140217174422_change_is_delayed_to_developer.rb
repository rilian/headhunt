class ChangeIsDelayedToDeveloper < ActiveRecord::Migration
  def change
    change_column :developers, :is_delayed, :boolean, null: false, default: false
  end
end
