class CreateUserRelationship < ActiveRecord::Migration[5.0]
  def change
    create_table :user_relationships do |t|
      t.integer :relationshipor_id
      t.integer :relationshipee_id
      t.string :relationship_type
      t.timestamps null: false
    end
  end
end
