require 'net/http'
require 'uri'

def open(url)
  Net::HTTP.get(URI.parse(url))
end

data = open('https://gist.githubusercontent.com/schesnowitz/73be37d1d9ce9e1127e3ed05833f692c/raw/2f3840dea67c18e1f739189755c7b7bce9980331/boxfile_pg.yml')

filename = 'boxfile.yml'
boxfile = File.new(filename, 'wb')
boxfile.puts(data)
boxfile.close