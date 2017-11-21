class AddAvatarToHotels < ActiveRecord::Migration[5.1]
  def change
    add_column :hotels, :avatar, :string
  end
end
