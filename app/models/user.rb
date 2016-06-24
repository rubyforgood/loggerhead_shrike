class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  ROLES = ['admin', 'researcher', 'scientist']

  def is_admin?
    self.role == "admin"
  end

  def is_researcher?
    self.role == "researcher"
  end

  def is_scientist?
    self.role == "scientist"
  end

  def is_pending?
    self.role == 'guest'
  end

  scope :count_of_role, -> (role) { User.where(role: role).count }
  scope :most_recent, -> (count) { User.order(created_at: :desc).limit(count) }
end
