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
  def relationships(type = nil)
    if type
      array = []
      records = self.user_relationships.where(relationship_type: type).joins(:user)
      records.each do |record|
        array << record.user
      end
    else
      self.users
    end
  end
end
