RailsAdmin.config do |config|

# config.authorize_with do
#   redirect_to main_app.root_path unless warden.user.admin == true
# end
# config.authorize_with do
#   redirect_to main_app.root_path unless current_user.admin == true
# end
  # config.authorize_with do
  #     redirect_to main_app.root_path unless warden.user.admin == true
  # end

config.model Post do 
    edit do
      field :title
      field :image
      field :description, :ck_editor
      field :format_post 
      field :tag_list 
      field :meta_title 
      field :meta_description 
      field :ads
      field :excerpt
      field :hide_post 
      field :user
      field :category
    end
  end


  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

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
