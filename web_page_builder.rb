require_relative 'request'
require_relative 'components'

api_address = "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=666&api_key="
api_key = "B9038ToX0u4qHgFC6VdEOos65TANfKXGgHuyh3GU"

def build_web_page(hash)
    return "<!DOCTYPE html>\n<html>\n" + head + body(navbar, card_gen(hash)) + "</html>"
end

def photos_count(hash)
    result = {}

    hash["photos"].each do |photo|
        if result.has_key?(photo["camera"]["full_name"])
            result[photo["camera"]["full_name"]] += 1
        else
            result[photo["camera"]["full_name"]] = 1
        end
    end

    return result
end


data = request(api_address, api_key)

puts photos_count(data)

File.write("index.html", build_web_page(data))