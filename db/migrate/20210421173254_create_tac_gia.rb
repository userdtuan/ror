class CreateTacGia < ActiveRecord::Migration[6.1]
  def change
    create_table :tac_gia do |t|
      t.string :name

      t.timestamps
    end
  end
end
