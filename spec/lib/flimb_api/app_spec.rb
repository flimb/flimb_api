require 'spec_helper'

describe FlimbApi do

  http_options = { 'Accept' => 'application/json',
                   'User-Agent' => FlimbApi::Base.headers['User-Agent'] }

  it 'returns websites' do
    websites = [{ id: 1, name: 'example.com' }, { id: 2, name: 'example.org' }]
    ActiveResource::HttpMock.respond_to do |mock|
      mock.get '/api/websites.json', http_options, websites.to_json
      mock.get '/api/websites/1.json', http_options, websites.first.to_json
    end
    FlimbApi::Website.all.size.should == 2
    FlimbApi::Website.find(1).name.should == 'example.com'
  end

  it 'returns alerts' do
    website = { id: 1, name: 'example.com' }
    alerts = [{ id: 1, source: 'Dnsbl', state: 'unresolved' }]
    ActiveResource::HttpMock.respond_to do |mock|
      mock.get '/api/websites/1.json', http_options, website.to_json
      mock.get '/api/alerts.json?website_id=1', http_options, alerts.to_json
    end
    FlimbApi::Website.find(1).alerts.first.source.should == 'Dnsbl'
  end
end
