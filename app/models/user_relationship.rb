class UserRelationship < ApplicationRecord
  belongs_to :user, foreign_key: :owner_id
  belongs_to :user
end
