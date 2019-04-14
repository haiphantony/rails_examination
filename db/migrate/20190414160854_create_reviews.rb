class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :score, null: false
      t.text :comment
      t.references :guide, foreign_key: true

      t.timestamps
    end
  end
end
