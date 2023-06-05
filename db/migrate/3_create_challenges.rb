class CreateChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :challenges do |t|
      t.string :name
      t.references :community, null: false, foreign_key: true
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
