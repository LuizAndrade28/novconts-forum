class CommentPolicy < ApplicationPolicy
  class Scope < ApplicationPolicy::Scope
    # def resolve
    #   scope.all
    # end
  end

  def new?
    true
  end

  def create?
    true
  end

  def destroy?
    admin?
  end

  private

  def admin?
    user.admin
  end
end
