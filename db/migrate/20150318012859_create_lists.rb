class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.string :description
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :lists, :users
  end
end
