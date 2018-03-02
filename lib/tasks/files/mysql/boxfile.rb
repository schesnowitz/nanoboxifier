require 'net/http'
require 'uri'

def open(url)
  Net::HTTP.get(URI.parse(url))
end

data = open('https://gist.githubusercontent.com/schesnowitz/42df5476a7d1f6d8529ec4d33435b527/raw/81ec58c9b3474acaa4dbda1783f03886f999bdbb/boxfile_mysql.yml')

filename = 'boxfile.yml'
boxfile = File.new(filename, 'wb')
boxfile.puts(data)
boxfile.close  