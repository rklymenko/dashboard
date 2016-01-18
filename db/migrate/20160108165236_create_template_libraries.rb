class CreateTemplateLibraries < ActiveRecord::Migration
  def change
    create_table :template_libraries do |t|
      t.string :title

      t.timestamps
    end
  end
end
