class CreateCaseChecklists < ActiveRecord::Migration
  def change
    create_table :case_checklists do |t|
      t.integer :case_id
      t.integer :checklist_id
      t.boolean :status

      t.timestamps
    end
  end
end
