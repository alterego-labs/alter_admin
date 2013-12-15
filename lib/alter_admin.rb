require "alter_admin/version"
require "alter_admin/engine"

module AlterAdmin

  autoload :Config,      'alter_admin/config'

  def self.config(&block)
    @config ||= ::AlterAdmin::Config.new
    block_given? ? yield(@config) : @config
  end

end