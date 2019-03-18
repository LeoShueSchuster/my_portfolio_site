class AddFieldsToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :link, :string
    add_column :projects, :credit, :text
  end
end
