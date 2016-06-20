class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  ROLES = %w(admin researcher scientist).freeze

  def is_admin?
    role == 'admin'
  end

  def is_researcher?
    role == 'researcher'
  end

  def is_scientist?
    role == 'scientist'
  end
end
