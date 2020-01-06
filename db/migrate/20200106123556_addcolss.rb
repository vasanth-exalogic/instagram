class Addcolss < ActiveRecord::Migration[6.0]
  def change
    add_index  :votes, [:pin_id, :user_id], :unique => true
  end
end
