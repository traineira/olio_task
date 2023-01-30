class AddExternalIdIndexToArticle < ActiveRecord::Migration[7.0]
  def change
    add_index :articles, :external_id, unique: true
  end
end
