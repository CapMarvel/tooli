class UserPolicy < ApplicationPolicy
  class Scope
    def show?
      user == record
    end
  end
end
