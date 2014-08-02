require 'active_support'
require 'active_support/core_ext'
require 'active_resource'

module FlimbApi
  extend ActiveSupport::Autoload

  Deprecator = ActiveSupport::Deprecation.new('1.0', name)

  eager_autoload do
    autoload :VERSION
    autoload :Base
    autoload :Alert
    autoload :Scan
    autoload :Website
  end
end

ActiveSupport.run_load_hooks('flimb_api', FlimbApi)
