class AddContactToDeveloper < ActiveRecord::Migration
  def change
    add_column :developers, :skype, :string
    add_column :developers, :email, :string
  end
end
