class AddMealsToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :meals, foreign_key: true
  end
end
