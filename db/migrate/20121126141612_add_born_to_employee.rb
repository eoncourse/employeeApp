class AddBornToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :born, :date
  end
end
