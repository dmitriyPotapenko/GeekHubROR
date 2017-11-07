class CreatePlanes < ActiveRecord::Migration[5.1]
  def change
    create_table :planes do |t|
      t.string :name
      t.belongs_to :airport, foreign_key: true

      t.timestamps
    end
  end
end
