require 'rails/generators/base'

module AlterAdmin
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      def create_alter_admin_initializer
        copy_file 'alter_admin_initializer.rb', File.join('config/initializers', "alter_admin_initializer.rb")
      end

      def create_layout
        copy_file 'admin.html.slim', File.join('app/views/layouts', "admin.html.slim")
      end

      def create_home_controller
        copy_file 'home_controller.rb', File.join('app/controllers/admin', "home_controller.rb")
      end

      def create_home_index_view
        copy_file 'home_index.html.slim', File.join('app/views/admin/home', "index.html.slim")
      end

      def add_route
        route <<-ROUTE
          namespace :admin do
            root to: 'home#index', as: :panel
          end
        ROUTE
      end

      def add_simple_form_initializer
        copy_file 'alter_admin_simple_form.rb', File.join('config/initializers', "alter_admin_simple_form.rb")
      end

    end
  end
end