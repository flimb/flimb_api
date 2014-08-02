# FlimbApi gem

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
