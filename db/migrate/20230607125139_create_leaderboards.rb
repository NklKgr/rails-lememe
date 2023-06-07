class CreateLeaderboards < ActiveRecord::Migration[7.0]
  create_table :leaderboards do |t|
    t.integer :score
    t.references :user, foreign_key: true
    t.references :challenge, foreign_key: true
    t.timestamps
  end
end
