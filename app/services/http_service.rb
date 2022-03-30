require 'net/http'

class HttpService
  def self.get(url, params)
    uri = URI(url)
    uri.query = URI.encode_www_form(params)

    Net::HTTP.get_response(uri)
  end
end
