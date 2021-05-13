class ChangeLengthColu < ActiveRecord::Migration[6.1]
  def up
    change_column :tbl_post_projects, :content, :string, :limit => 5000
  end
end
