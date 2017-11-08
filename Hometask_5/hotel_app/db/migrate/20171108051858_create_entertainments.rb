class CreateEntertainments < ActiveRecord::Migration[5.1]
  def change
    create_table :entertainments do |t|
      t.string :kind_of
      t.belongs_to :hotel, foreign_key: true

      t.timestamps
    end
  end
end
