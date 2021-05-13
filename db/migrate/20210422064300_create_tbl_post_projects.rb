class CreateTblPostProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :tbl_post_projects do |t|
      t.string :title
      t.string :slug
      t.string :desc
      t.string :content
      t.string :metadesc
      t.string :metakeyword

      t.timestamps
    end
  end
end
