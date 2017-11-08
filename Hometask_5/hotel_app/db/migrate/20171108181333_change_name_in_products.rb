class ChangeNameInProducts < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :name, :boolean
  end
end
