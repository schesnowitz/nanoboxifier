require 'net/http'
require 'uri'

def open(url)
  Net::HTTP.get(URI.parse(url))
end

data = open('https://gist.githubusercontent.com/schesnowitz/18fb2eae7508f58661686459463f2046/raw/42fbd90fa2c2a5d7b44678943764c902231a9f04/boxfile_mysql_sidekiq.yml')

filename = 'boxfile.yml'
boxfile = File.new(filename, 'wb')
boxfile.puts(data)
boxfile.close  
