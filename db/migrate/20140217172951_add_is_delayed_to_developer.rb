class AddIsDelayedToDeveloper < ActiveRecord::Migration
  def change
    add_column :developers, :is_delayed, :boolean
  end
end
