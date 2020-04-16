class LeaguePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def create?
    return true
  end

  def show?
    true
  end

  def update?
    if record.user == user
      return true
    end
  end
end
