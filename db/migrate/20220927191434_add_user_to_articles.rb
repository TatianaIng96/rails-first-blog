class AddUserToArticles < ActiveRecord::Migration[7.0]
  def change
    add_reference :articles, :users, null: true, foreign_key: true
  end
end
