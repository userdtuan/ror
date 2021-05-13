class ChangeDataTypeForFieldname < ActiveRecord::Migration[6.1]
  def change
    change_column(:tbl_post_projects, :content, :text)

  end
end
