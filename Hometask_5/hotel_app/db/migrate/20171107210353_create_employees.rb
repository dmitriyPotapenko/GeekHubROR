class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :second_name
      t.belongs_to :position, foreign_key: true

      t.timestamps
    end
  end
end
