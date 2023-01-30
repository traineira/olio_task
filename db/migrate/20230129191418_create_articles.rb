class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.integer :external_id
      t.boolean :liked

      t.timestamps
    end
  end
end
