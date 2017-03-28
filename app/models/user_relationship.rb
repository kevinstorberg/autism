class UserRelationship < ApplicationRecord
  belongs_to :user, foreign_key: "relationshipor_id", class_name: "User"
  has_one :user, foreign_key: "relationshipee_id", class_name: "User"
end
