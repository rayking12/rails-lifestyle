class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.integer :author_id
      t.string :title
      t.text :body
      t.string :image_data
      t.integer :vote_count, default: 0
      t.timestamps
    end
  end
end
