require 'generators/alter_admin'

class InstallGenerator < Base

  def create_layout
    template 'admin.html.erb', File.join('app/views/layout', "admin.html.erb")
  end

  def create_home_controller
    template 'home_controller.rb', File.join('app/controllers/admin', "home_controller.rb")
  end

  def create_home_index_view
    template 'home_index.html.erb', File.join('app/views/admin/home', "home_index.html.erb")
  end

  def create_alter_admin_settings
    template 'alter_admin_settings.rb', File.join('lib', "alter_admin_settings.rb")
  end

  def add_route
    route <<-ROUTE
      namespace :admin do
        root to: 'home#index', as: :panel
      end
    ROUTE
  end

  def add_simple_form_initializer
    template 'alter_admin_simple_form.rb', File.join('config/initializers', "alter_admin_simple_form.rb")
  end

end