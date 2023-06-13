class AddStatusToMemberships < ActiveRecord::Migration[7.0]
  def change
    add_column :memberships, :status, :string
  end
end
