class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.date :born
      t.boolean :admin
      t.integer :weight
      t.text :note

      t.timestamps
    end
  end
end
