# -*- encoding : utf-8 -*-
class Admin::<%= class_name.pluralize %>Controller < Admin::HomeController
  inherit_resources
  defaults route_prefix: 'admin', resource_class: <%= class_name %>, collection_name: '<%= plural_name %>', instance_name: '<%= plural_name.singularize %>'

  private
  def permitted_params
    {<%= plural_name.singularize %>: params.fetch(:<%= plural_name.singularize %>, {}).permit!}
  end

end
