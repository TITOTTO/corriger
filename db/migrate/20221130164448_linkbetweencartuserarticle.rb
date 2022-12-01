class Linkbetweencartuserarticle < ActiveRecord::Migration[7.0]
  def change
    add_reference :carts, :user, foreign_key: true
    add_reference :carts, :article, foreign_key: true
    add_index :carts, [:user_id, :article_id], unique: true
  end
end
