class AddIsContactedToDeveloper < ActiveRecord::Migration
  def change
    add_column :developers, :is_contacted, :boolean, default: false, null: false
  end
end
