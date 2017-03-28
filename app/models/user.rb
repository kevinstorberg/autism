class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :invitable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable

  has_many :relationshipees, foreign_key: "relationshipor_id", class_name: "UserRelationship"
  belongs_to :relationshipors, foreign_key: "relationshipee_id", class_name: "UserRelationship"
end
