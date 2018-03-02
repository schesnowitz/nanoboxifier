require 'net/http'
require 'uri'

def open(url)
  Net::HTTP.get(URI.parse(url))
end

data = open('https://gist.githubusercontent.com/schesnowitz/8df388fc6dbe3dd1c22c22114594f715/raw/0f39ee3e87b93f6f1876379aa2a0e37c337549a6/puma.rb')

filename = 'config/puma.rb'
the_file = File.new(filename, 'wb')
the_file.puts(data)
the_file.close  