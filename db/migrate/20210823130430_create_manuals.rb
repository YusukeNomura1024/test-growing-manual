class CreateManuals < ActiveRecord::Migration[5.2]
  def change
    create_table :manuals do |t|
      t.references :user, foreign_key: true, null: false
      t.string :title, null: false
      t.string :image_id
      t.text :description
      t.references :category, foreign_key: true
      t.boolean :is_active, null: false, default: false

      t.timestamps
    end
  end
end
