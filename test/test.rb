require 'rubygems'
require './main'
require 'minitest/autorun'
require 'rack/test'
ENV['RACK_ENV'] = 'test'

class MyTest < MiniTest::Unit::TestCase

  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_for_echo
    get '/'
    assert last_response.ok?
 	assert last_response.body.include?("slideshow_pictures/newsapp.jpg")
  end

  def test_for_pictures
    pictures = load_pictures
    assert pictures.length > 0, "There are no pictures"
  end
end
