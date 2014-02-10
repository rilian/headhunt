class AddIsNotInterestedToDeveloper < ActiveRecord::Migration
  def change
    add_column :developers, :is_not_interested, :boolean
  end
end
