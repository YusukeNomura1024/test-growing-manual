class CreateMemos < ActiveRecord::Migration[5.2]
  def change
    create_table :memos do |t|
      t.references :user, foreign_key: true, null: false
      t.references :method_category, foreign_key: true
      t.string :title, null: false
      t.text :description
      t.text :code

      t.timestamps
    end
  end
end
