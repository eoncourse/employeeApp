class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.integer :wage
      t.string :position

      t.timestamps
    end
  end
end
