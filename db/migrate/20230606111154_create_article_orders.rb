class CreateArticleOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :article_orders do |t|
      t.integer :quantity
      t.references :order, null: false, foreign_key: true
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
