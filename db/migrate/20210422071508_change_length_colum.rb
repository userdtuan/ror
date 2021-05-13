class ChangeLengthColum < ActiveRecord::Migration[6.1]
  def up
    change_column :tbl_post_projects, :content, :string, :limit => 2000
  end
end
