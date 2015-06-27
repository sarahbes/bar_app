class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.string :name
      t.string :picture
      t.string :description

      t.timestamps null: false
    end
  end
end
