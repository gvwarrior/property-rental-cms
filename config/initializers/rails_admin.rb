RailsAdmin.config do |config|

  config.parent_controller = "::ApplicationController"

  # change name of Business model on admin panel
  config.model 'Business' do
    label 'Company Information'
    label_plural 'Company Information'
  end
  # change heading displayed in admin panel
  config.main_app_name = ['Property Management', 'Admin Panel']


  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  config.current_user_method(&:current_user)
  # config.current_user_method()
  # config.authorize_with do
  #  redirect_to main_app.root_path unless warden.user.admin == true
  # end
  # https://github.com/sferik/rails_admin/wiki/Manually
=begin
  config.authenticate_with do
     authenticate_or_request_with_http_basic('Login required') do |name, password|
       user = User.where(name: name).first
       user.authenticate(password) if user
     end
  end
=end

  RailsAdmin.config do |config|
    config.authorize_with do
      redirect_to main_app.root_path unless current_user.is_admin?
    end
  end
  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

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

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
