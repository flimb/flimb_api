require 'flimb_api/resource/countable'
require 'flimb_api/resource/paginated'

module FlimbApi
  class Base < ActiveResource::Base
    extend Resource::Countable
    extend Resource::Paginated

    self.include_root_in_json = true
    self.headers['User-Agent'] = %W(
      FlimbApi/#{FlimbApi::VERSION::STRING}
      ActiveResource/#{ActiveResource::VERSION::STRING}
      Ruby/#{RUBY_VERSION}).join(' ')
    self.format = :json
    self.prefix = '/api/'
    self.site = 'https://flimb.com'
  end
end
