class CreateSprints < ActiveRecord::Migration[7.2]
  def change
    create_table :sprints do |t|
      t.string :name
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
