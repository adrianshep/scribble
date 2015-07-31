class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.string :username
      t.string :text
      t.timestamps null: false
      t.references :post, index: true, foreign_key: true
    end
  end
end
