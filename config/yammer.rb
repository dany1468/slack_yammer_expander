require 'yammer'

Yammer.configure do |c|
  c.client_id = ENV['YAMMER_CLIENT_ID']
  c.client_secret = ENV['YAMMER_CLIENT_SECRET']
  c.access_token = ENV['YAMMER_ACCESS_TOKEN']
end
