class ChangeNewNameInProducts < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :new_name, :string
  end
end
