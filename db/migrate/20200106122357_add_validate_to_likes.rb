class AddValidateToLikes < ActiveRecord::Migration[6.0]
  def change
    add_column :likes, :check, :string
  end
end
