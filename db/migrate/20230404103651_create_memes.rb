class CreateMemes < ActiveRecord::Migration[7.0]
  def change
    create_table :memes do |t|
      t.string :title
      t.integer :score, default: 0
      t.references :user, null: false, foreign_key: true
      t.references :challenge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
