class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone_number
      t.string :time
      t.string :notes
      t.references :bar, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
