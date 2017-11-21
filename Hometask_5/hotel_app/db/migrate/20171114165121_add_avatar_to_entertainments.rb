class AddAvatarToEntertainments < ActiveRecord::Migration[5.1]
  def change
    add_column :entertainments, :avatar, :string
  end
end
