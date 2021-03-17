class DropArticles < ActiveRecord::Migration[6.1]
  def change
    drop_table :articles, force: :cascade
  end
end
