require_relative 'request'
require_relative 'components'

api_address = "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=666&api_key="
api_key = "B9038ToX0u4qHgFC6VdEOos65TANfKXGgHuyh3GU"

def build_web_page
    return "<html>\n" + head + body(navbar + "<h1>Prueba</h1>\n") + "</html>"
end

File.write("index.html", build_web_page)