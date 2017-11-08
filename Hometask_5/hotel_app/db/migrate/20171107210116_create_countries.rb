class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :name
      t.belongs_to :continent, foreign_key: true

      t.timestamps
    end
  end
end
