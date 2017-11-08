class CreateTourists < ActiveRecord::Migration[5.1]
  def change
    create_table :tourists do |t|
      t.string :first_name
      t.string :second_name
      t.belongs_to :hotel, foreign_key: true

      t.timestamps
    end
  end
end
