require 'generators/alter_admin'

module AlterAdmin
  module Generators
    class ResourceGenerator < Base

      def create_controller
        template "controller.rb", File.join('app/controllers/admin', "#{file_name.pluralize}_controller.rb")
      end

      def add_route
        route <<-ROUTE
          namespace :admin do
            resources :#{plural_name}
          end
        ROUTE
      end

      def add_views
        %w{index edit new _form show}.each do |view|
          template "views/#{view}.html.erb", File.join('app/views/admin', "#{file_name.pluralize}/#{view}.html.erb")
        end
      end

      def add_model_admin_setting
        template "model_setting.rb", File.join('app/admin', "#{file_name}_admin_setting.rb")
      end

    end
  end
end
