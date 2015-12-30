class TweetsController < ApplicationController
  require 'tweetstream'

  def index
    TweetStream.configure do |config|
      config.consumer_key = '	1i5SKPfgHsxhXFbrp4CqGQJ7s'
      config.consumer_secret = 'I9rNXsNMEtq6cXQcCAeJSaiQdvwWiKSu380suOQSDyzBoSyKj2'
      config.oauth_token = '602075086-OshzTNsN5MaIRXXC18Vgo2SYitsGcPrAFpWK4VFi'
      config.oauth_token_secret = '	8CxTzZQjPqoMaZMfSQ8UX59Y1aB4BlS7HzOQczn5DT8Li'
      config.auth_method = :oauth
    end

    TweetStream::Client.new.sample do |status|
      p status
    end
  end


end
