module AlterAdmin::ViewHelper

  def error_messages_for(resource)
    render 'shared/alter_admin/errors', object: resource
  end

end