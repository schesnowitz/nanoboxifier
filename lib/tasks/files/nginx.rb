require 'net/http'
require 'uri'

def open(url)
  Net::HTTP.get(URI.parse(url))
end

data = open('https://gist.githubusercontent.com/schesnowitz/4047cc0674d8d2189fabc6beae17e53b/raw/d67456d0e469af4c924e5fb9813627f3d2c807ea/nginx.conf')

filename = 'config/nginx.conf'
the_file = File.new(filename, 'wb')
the_file.puts(data)
the_file.close  