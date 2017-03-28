class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
        #  :invitable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable

  has_many :user_relationships, foreign_key: :owner_id
  has_many :users, through: :user_relationships

  def admin?
    self.role == "admin"
  end

  # NOTE: Relationship based methods
  def family
    self.users.where(relationship_type: "family")
  end

  def friends
    self.users.where(relationship_type: "friend")
  end

  def professionals
    self.users.where(relationship_type: "professional")
  end

  def relationships
    self.users
  end
end
