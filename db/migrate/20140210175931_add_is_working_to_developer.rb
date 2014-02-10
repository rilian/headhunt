class AddIsWorkingToDeveloper < ActiveRecord::Migration
  def change
    add_column :developers, :is_working, :boolean
  end
end
