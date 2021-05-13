class AddColumnsTotblPostProject < ActiveRecord::Migration[6.1]
  def change
    add_column :tbl_post_projects, :status, :string
    add_column :tbl_post_projects, :img, :string
  end
end
