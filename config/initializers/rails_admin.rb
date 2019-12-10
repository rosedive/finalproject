RailsAdmin.config do |config|
  config.model 'User' do
    list do
      configure :password_digest do
        hide
      end
    end
  end
  ### Popular gems integration
  config.parent_controller = "::ApplicationController"
  config.authorize_with do |controller|
    unless current_user && current_user.admin?
      redirect_to(
        main_app.new_session_path,
        alert: "Please Log In First In Order To See The Dashboard Of Admin"
      )
    end
    I18n.default_locale = :ja
    I18n.locale = params[:locale] || I18n.default_locale
  end

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == CancanCan ==
  # config.authorize_with :cancancan

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
