class AddMealToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :meal, foreign_key: true
  end
end
