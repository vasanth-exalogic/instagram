class AddPinIdToLikes < ActiveRecord::Migration[6.0]
  def change
    add_column :likes, :pin_id, :integer
    change_column :likes, :user_id, :integer
    remove_column :likes, :post_id
  end
end
