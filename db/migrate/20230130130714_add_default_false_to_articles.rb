class AddDefaultFalseToArticles < ActiveRecord::Migration[7.0]
  def change
    change_column :articles, :liked, :boolean, default: false
  end
end
