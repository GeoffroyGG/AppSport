class PlayerPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
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
