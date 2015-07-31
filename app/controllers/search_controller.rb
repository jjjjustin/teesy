require 'open-uri'
class SearchController < ApplicationController

  def index
    query = params.fetch(:query, 'crew')
    color = params.fetch(:color, 'BLACK')
    url = "http://temporaryshirts.herokuapp.com/query?q=#{query}&limit=50&page=0"
    response = JSON.parse(open(url).read)
    @items = response
    @itemcodes = @items.map { |item| JSON.parse(open(itemcode_url(item['code'])).read) }
  end

  def itemcode_url(code)
    "http://temporaryshirts.herokuapp.com/itemcode?code=#{code}"
  end

end



# helper_method :img_url_for_item

#   def index
#     query = params.fetch(:query, 'wood')
#     url = "https://openapi.etsy.com/v2/listings/active?api_key=pmpusjqr5lyr7alo7o1x4lh4&keywords=#{query}&limit=12"
#     response = JSON.parse(open(url).read)
#     @items = response['results']
#     @images = response['results'].map { |item| JSON.parse(open(image_url(item['listing_id'])).read) }
#   end

#   def image_url(id)
#     "https://openapi.etsy.com/v2/listings/#{id}/images?api_key=pmpusjqr5lyr7alo7o1x4lh4"
#   end

#   def img_url_for_item(item)
#     @images.find { |img| img.fetch("results").first.fetch("listing_id") == item["listing_id"] }["results"].first["url_170x135"]
#   end
# end


