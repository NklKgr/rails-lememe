class AddDescriptionToCommunities < ActiveRecord::Migration[7.0]
  def change
    add_column :communities, :description, :text
  end
end
