class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include ActionView::Helpers::TextHelper
	
	before_filter :reload_rails_admin, :if => :rails_admin_path?
  before_action :load_cart
  before_action :set_new_user

	helper_method :current_categories
  helper_method :current_user
  helper_method :admin?
	helper_method :current_suppliers

	def load_cart
    @cart = Cart.new(session[:cart])
  end
	

  def set_new_user
    @user = User.new
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to not_found_path
  end

  private


  def authorize
    redirect_to login_path, alert: "Not authorized" if current_user.nil?
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_categories
    @categoryindex = Category.all
  end

  def admin?
    current_user.admin? if current_user.present?
  end

	def current_suppliers
		@suppliers ||= Supplier.all
	end

	def reload_rails_admin
    models = %W(User UserProfile)
    models.each do |m|
      RailsAdmin::Config.reset_model(m)
    end
    RailsAdmin::Config::Actions.reset

    load("#{Rails.root}/config/initializers/rails_admin.rb")
  end

  def rails_admin_path?
    controller_path =~ /rails_admin/ && Rails.env == "development"
  end
end
