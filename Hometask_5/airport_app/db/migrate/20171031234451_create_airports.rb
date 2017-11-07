class CreateAirports < ActiveRecord::Migration[5.1]
  def change
    create_table :airports do |t|
      t.string :name
      t.belongs_to :city, foreign_key: true

      t.timestamps
    end
  end
end
