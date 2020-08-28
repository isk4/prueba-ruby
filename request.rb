require 'uri'
require 'net/http'
require 'openssl'
require 'json'

def request(address, api_key)
    url = URI(address + api_key)
    http = Net::HTTP.new(url.host, url.port)
    request = Net::HTTP::Get.new(url)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER
    response = http.request(request)
    return JSON.parse(response.read_body)
end