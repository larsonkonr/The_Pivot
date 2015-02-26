RailsAdmin.config do |config|
	config.main_app_name = ['Air-lift', 'Site-Admin']

 	config.authorize_with :cancan
	config.current_user_method do 
		current_user
	end

	config.authorize_with do
    redirect_to main_app.root_path unless current_user.present? && current_user.admin?
  end
	
  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end
end
