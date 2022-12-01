class Linkbetween < ActiveRecord::Migration[7.0]
  def change
    add_reference :articles, :console, foreign_key: true
  end
end
