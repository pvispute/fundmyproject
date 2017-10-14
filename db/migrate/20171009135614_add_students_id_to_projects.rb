class AddStudentsIdToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :student_id, :integer
    add_index  :projects, :student_id
  end
end
