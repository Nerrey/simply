class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if 
        can :manage, :all
    else
      
    end
  end
end
