class CreateTasks < ActiveRecord::Migration[7.2]
  def change
    create_table :tasks do |t|
      t.text :description
      t.references :sprint, null: false, foreign_key: true

      t.timestamps
    end
  end
end
