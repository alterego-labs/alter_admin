# -*- encoding : utf-8 -*-
AlterAdmin.config do |config|

  # Set your application name
  config.app_name = "Application name"

  # Set list of models that will administrable
  config.registered_models = []

  # Set destroy session path
  config.user_session_destroy_path = :destroy_session_path

end