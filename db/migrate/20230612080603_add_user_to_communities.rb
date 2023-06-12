class AddUserToCommunities < ActiveRecord::Migration[7.0]
  def change
    add_reference :communities, :user, foreign_key: true
  end
end
