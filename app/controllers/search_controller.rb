require 'open-uri'
require 'httparty'

class SearchController < ApplicationController

  def index
     @response = Search.response("color", "GREEN")
  end
end
