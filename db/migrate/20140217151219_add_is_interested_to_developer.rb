class AddIsInterestedToDeveloper < ActiveRecord::Migration
  def change
    add_column :developers, :is_interested, :boolean
  end
end
