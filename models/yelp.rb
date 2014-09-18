module Yelp
  API_ROOT = 'http://api.yelp.com/v2/search?'

  def authorize_client
    return Yelp::Client.new({
      consumer_key: ENV['YELP_CONSUMER_KEY'],
      consumer_secret: ENV['YELP_CONSUMER_SECRET'],
      token: ENV['YELP_TOKEN'],
      token_secret: ENV['YELP_SECRET_TOKEN']
    })
  end
  def search_by_location(location)
    client = authorize_client
    params = {
      term: 'coffee',
      limit: 25,
      category_filter: 'coffee',
      radius_filter: 500
    }
  end
end