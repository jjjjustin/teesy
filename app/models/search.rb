require 'httparty'

class Search
  include HTTParty

  def self.response(a, b)
    api_url = "http://ec2-54-149-247-197.us-west-2.compute.amazonaws.com:8888/data?where={%22#{a}%22:%20%22#{b}%22}"
    HTTParty.get(api_url)
  end

end


