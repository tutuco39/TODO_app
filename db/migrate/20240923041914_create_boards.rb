class CreateBoards < ActiveRecord::Migration[7.2]
  def change
    create_table :boards do |t|
      t.references :user, null: false
      t.timestamps
      t.string :title
      t.text :description
    end
  end
end
