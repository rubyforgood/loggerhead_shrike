class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  ROLES = %w(admin researcher scientist).freeze

  def admin?
    role == 'admin'
  end

  def researcher?
    role == 'researcher'
  end

  def scientist?
    role == 'scientist'
  end
end
