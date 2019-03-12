class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.string :today
      t.date :date
      t.integer :spend

      t.timestamps
    end
  end
end
