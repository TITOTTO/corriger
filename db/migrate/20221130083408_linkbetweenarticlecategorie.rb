class Linkbetweenarticlecategorie < ActiveRecord::Migration[7.0]
  def change
    add_reference :articles, :category, foreign_key: true
    add_reference :articles, :seller, index: true
    add_reference :articles, :buyer, index: true
  end
end
