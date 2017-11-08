class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.string :name
      t.belongs_to :employee, foreign_key: true

      t.timestamps
    end
  end
end
