require 'open-uri'
class SearchController < ApplicationController

  def index
    query = params.fetch(:query, 'crew')
    search_color = params.fetch(:color, 'WHITE')
    page = params.fetch(:page, 0)
    black = '"' + search_color + '"'
    filter = '[{"color":' + "#{black}}]"
    sort = '[("price",-1)]'
    url = "http://temporaryshirts.herokuapp.com/query?q=#{query}&limit=25&page=#{page}&filters=#{filter}"
    response = JSON.parse(open(url).read)
    @items = response
    @item_codes = response.map { |item| JSON.parse(open(item_code_url(item['code'])).read) }

  end

  def item_code_url(code)
    "http://temporaryshirts.herokuapp.com/itemcode?code=#{code}"
  end

end




