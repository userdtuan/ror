class ChangeLengthColumn < ActiveRecord::Migration[6.1]
  def change
    def up
      change_column :tbl_post_projects, :content, :string, :limit => 2000
    end
  end
end
