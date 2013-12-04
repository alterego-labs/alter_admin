# -*- encoding : utf-8 -*-
require 'pathname'

class AlterAdminSettings

  def self.app_name
    "Application name"
  end

  def self.registered_models
    fetch_models_names
  end

  private

  def self.fetch_models_names
    root = get_settings_root
    Dir["#{root}/*.rb"].map { |file| fetch_class(file) }
  end

  def self.get_settings_root
    File.expand_path("../app/admin", File.dirname(__FILE__))
  end

  def self.fetch_class(file)
    Pathname.new(file).basename.to_s.gsub('_admin_setting.rb', '').classify.constantize
  end

end
