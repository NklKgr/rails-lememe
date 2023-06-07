class AddHighScoreToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :high_score, :integer
  end
end
