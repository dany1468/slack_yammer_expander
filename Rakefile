require 'dotenv'
require 'dotenv/tasks'
require 'yammer'

task auth: :dotenv do
  yammer_client = Yammer::OAuth2Client.new(ENV['YAMMER_CLIENT_ID'], ENV['YAMMER_CLIENT_SECRET'])

  puts 'visit the following url, and get access_token from redirected url.'
  puts 'redirected url example) http://localhost/oauth2/callback#access_token=<access_token>'
  puts yammer_client.webclient_authorization_url(redirect_uri: 'http://localhost/oauth2/callback')
end
