class AddIsPriorityToDeveloper < ActiveRecord::Migration
  def change
    add_column :developers, :is_priority, :boolean
  end
end
