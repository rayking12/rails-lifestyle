class ChangeVoteCountToArticles < ActiveRecord::Migration[6.1]
  def change
    change_column_default :articles, :vote_count, 0
  end
end
