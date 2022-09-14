class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body

      t.timestamps # define dos columnas adicionales created_at u update_at
    end
  end
end
