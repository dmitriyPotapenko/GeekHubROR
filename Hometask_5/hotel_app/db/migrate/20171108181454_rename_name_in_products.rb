class RenameNameInProducts < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :name, :new_name
  end
end
