class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.is_admin?
      can :manage, :all
    elsif user.is_researcher?
      can :read, :all
      can :create, :observation
    elsif user.is_scientist?
      can :create, :observation
    end
  end
end
