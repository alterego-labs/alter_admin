module AlterAdmin
  module Rails
    class Engine < ::Rails::Engine
      initializer "alter_admin.assets.precompile" do |app|
        app.config.assets.precompile +=
          %w(admin/script.js
             admin/style.css)
      end
    end
  end
end