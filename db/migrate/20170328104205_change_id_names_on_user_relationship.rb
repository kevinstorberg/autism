class ChangeIdNamesOnUserRelationship < ActiveRecord::Migration[5.0]
  def change
    rename_column :user_relationships, :relationshipor_id, :owner_id
    rename_column :user_relationships, :relationshipee_id, :user_id
  end
end
