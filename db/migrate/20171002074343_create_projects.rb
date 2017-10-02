class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :desc
      t.string :slug

      t.timestamps
    end
    add_index :projects, :slug, unique: true
  end
end
