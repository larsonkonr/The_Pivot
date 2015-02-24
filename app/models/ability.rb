class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.admin?
      can :manage, :all
		elsif user.supplier?
			can [:read, :update], Supplier, slug: user.supplier_admin.supplier.slug
			can [:manage], [Item, Order, Category], supplier_id: user.supplier_admin.supplier.id
      cannot [:manage], Cart, id: user.id
    else
      can :read, User, id: user.id
      can :read, Order#, user_id: user.id  not sure if I should replace this with something else that identifies the user?
    end
  end
end
