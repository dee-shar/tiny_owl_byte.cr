require "json"
require "http/client"

class TinyOwlByte
  def initialize()
    @headers = HTTP::Headers {
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://tiny.owlbyte.org")
    @http_client = HTTP::Client.new(uri)
  end

  def shorten_url(url : String) : JSON::Any
    body = {"longUrl" => url}.to_json
    JSON.parse(@http_client.post("/shorten", body: body, headers: @headers).body)
  end
end
