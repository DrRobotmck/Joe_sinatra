module Yelp
  API_ROOT = 'http://api.yelp.com/v2/search?'

  def self.authorize_client
    return Yelp::Client.new({
      consumer_key: ENV['YELP_CONSUMER_KEY'],
      consumer_secret: ENV['YELP_CONSUMER_SECRET'],
      token: ENV['YELP_TOKEN'],
      token_secret: ENV['YELP_TOKEN_SECRET']
    })
  end
  def self.search_by_location(location)
    client = authorize_client
    params = {
      term: 'coffee',
      category_filter: 'coffee',
      radius_filter: 500,
      sort: 2
    }
    client.search('New York', params)
  end
end
