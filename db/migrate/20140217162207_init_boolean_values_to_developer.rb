class InitBooleanValuesToDeveloper < ActiveRecord::Migration
  def change
    change_column :developers, :is_need_speaking, :boolean, null: false, default: false
    change_column :developers, :is_accepted, :boolean, null: false, default: false
    change_column :developers, :is_rejected, :boolean, null: false, default: false
    change_column :developers, :is_working, :boolean, null: false, default: false
    change_column :developers, :is_not_interested, :boolean, null: false, default: false
    change_column :developers, :is_interested, :boolean, null: false, default: false
    change_column :developers, :is_priority, :boolean, null: false, default: false
  end
end
