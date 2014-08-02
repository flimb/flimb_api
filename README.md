# FlimbApi gem

[![Gem Version](https://badge.fury.io/rb/flimb_api.png)](http://badge.fury.io/rb/flimb_api)
[![Build Status](https://secure.travis-ci.org/flimb/flimb_api.png)](http://travis-ci.org/flimb/flimb_api)
[![Code Climate](https://codeclimate.com/github/flimb/flimb_api.png)](https://codeclimate.com/github/flimb/flimb_api)
[![Dependency Status](https://gemnasium.com/flimb/flimb_api.png)](https://gemnasium.com/flimb/flimb_api)

Flimb API client based on [ActiveResource](https://github.com/rails/activeresource).

## Install

Add to Gemfile:

```ruby
gem 'flimb_api'
```

## Use

```ruby
website = FlimbApi::Website.last
website.enable_dnsbl = false
website.save

website.alerts.last
```
