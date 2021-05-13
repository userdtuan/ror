class Addmore < ActiveRecord::Migration[6.1]
  def change
    add_column :tbl_post_tintucs, :img, :string
    add_column :tbl_post_dichvus, :img, :string
  end
end
