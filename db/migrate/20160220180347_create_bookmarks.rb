class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.text :url
      t.string :title
      t.string :description
      t.text :body

      t.timestamps null: false
    end
  end
end
