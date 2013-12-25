require "alter_admin/version"
require "alter_admin/engine"

module AlterAdmin

  autoload :Config,              'alter_admin/config'
  autoload :ValueDecorator,      'alter_admin/value_decorator'
  autoload :ModelSetting,        'alter_admin/model_setting'

  def self.config(&block)
    @config ||= ::AlterAdmin::Config.new
    block_given? ? yield(@config) : @config
  end

end