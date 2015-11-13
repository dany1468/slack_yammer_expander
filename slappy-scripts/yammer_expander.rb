require 'pry'
require 'yammer'

hear "https://www.yammer.com/#{ENV['YAMMER_NETWORK_NAME']}/#/Threads/show\\?threadId=(\\d*)" do |event|
  thread_id = event.matches[1]

  thread = Yammer::Resources::Thread.get(thread_id.to_i)
  body = thread.messages.to_a.last.last.body

  say body[:plain], channel: event.channel
end
