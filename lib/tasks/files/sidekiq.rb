require 'net/http'
require 'uri'

def open(url)
  Net::HTTP.get(URI.parse(url))
end

data = open('https://gist.githubusercontent.com/schesnowitz/f251a689ab995a043e6fcd63362ea9a2/raw/22f5a00a241d7854e6e30bbafd13e3a1458688ad/sidekiq.rb')

filename = 'config/initializers/sidekiq.rb'
the_file = File.new(filename, 'wb')
the_file.puts(data)
the_file.close  