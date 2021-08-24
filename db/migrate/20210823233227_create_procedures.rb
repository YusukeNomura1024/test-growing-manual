class CreateProcedures < ActiveRecord::Migration[5.2]
  def change
    create_table :procedures do |t|
      t.references :manual, foreign_key: true, null: false
      t.string :title, null: false
      t.integer :position, null: false
      t.text :description
      t.boolean :is_active, null: false, default: true

      t.timestamps
    end
  end
end
