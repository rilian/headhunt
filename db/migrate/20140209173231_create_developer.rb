class CreateDeveloper < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :name
      t.string :city
      t.string :speciality
      t.string :current_position
      t.string :current_company
      t.string :time_at_current_company
      t.text :technologies
      t.text :skills
      t.string :birthday
      t.string :linkedin
      t.string :github
      t.text :other_links

      t.string :recommended_by
      t.text :notes
      t.text :initial_speaking_notes
      t.text :tech_interview_notes
      t.text :vlad_notes
      t.text :test_assignment_notes

      t.boolean :is_accepted
      t.boolean :is_rejected

      t.timestamps
    end

    add_index :developers, :name, unique: true
    add_index :developers, :city
    add_index :developers, :speciality
    add_index :developers, :current_position
    add_index :developers, :current_company
    add_index :developers, :time_at_current_company
    add_index :developers, :technologies
    add_index :developers, :skills
    add_index :developers, :birthday
    add_index :developers, :linkedin
    add_index :developers, :github
    add_index :developers, :other_links
    add_index :developers, :recommended_by
    add_index :developers, :notes
    add_index :developers, :initial_speaking_notes
    add_index :developers, :tech_interview_notes
    add_index :developers, :vlad_notes
    add_index :developers, :test_assignment_notes
    add_index :developers, :is_accepted
    add_index :developers, :is_rejected
  end
end
