require 'sinatra'
require 'sinatra/reloader'
require 'geocoder'
require 'yelp'
require 'pry'
require_relative 'models/yelp.rb'

enable :sessions

get ('/') do 
  session[:ip_of_request] = "208.185.23.206"
  erb :app
end

get ('/fetch_near_you') do 
  @results = Yelp.search_by_location(session[:ip_of_request])
  binding.pry
  render nothing: true
end