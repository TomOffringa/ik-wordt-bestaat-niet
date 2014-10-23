require 'twitter'

class WelcomeController < ApplicationController

  def index
    @tweets = client.search("\"ik wordt\"", :result_type => "recent").take(3)
  end

  def client
    client = Twitter::REST::Client.new do |config|
      config.consumer_key    = ENV["CONSUMER_KEY"]
      config.consumer_secret = ENV["CONSUMER_SECRET"]
    end
  end

end
