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
end
