class CreateServices < ActiveRecord::Migration[8.1]
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :icon

      t.timestamps
    end
  end
end
