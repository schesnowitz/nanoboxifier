require 'net/http'
require 'uri'

def open(url)
  Net::HTTP.get(URI.parse(url))
end

data = open('https://gist.githubusercontent.com/schesnowitz/73be37d1d9ce9e1127e3ed05833f692c/raw/94daae47986f759b8f643ebe379e4f7659e71142/boxfile_pg.yml')

filename = 'boxfile.yml'
boxfile = File.new(filename, 'wb')
boxfile.puts(data)
boxfile.close