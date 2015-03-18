class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.belongs_to :author, index: true
      t.belongs_to :item, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :authors
    add_foreign_key :comments, :items
  end
end
