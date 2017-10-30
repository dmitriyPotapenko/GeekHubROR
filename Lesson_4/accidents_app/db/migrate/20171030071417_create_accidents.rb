class CreateAccidents < ActiveRecord::Migration[5.1]
  def change
    create_table :accidents do |t|
      t.string :city
      t.integer :category
      t.integer :victims

      t.timestamps
    end
  end
end
