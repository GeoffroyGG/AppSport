class PlayerPolicy < ApplicationPolicy
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

  def destroy?
    if record.user == user || user.admin
      return true
    end
  end

  def update?
    if record.user == user || user.admin
      return true
    end
  end
end
