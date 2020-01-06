class AddHasDpToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :has_dp, :boolean, :default => false
  end
end
