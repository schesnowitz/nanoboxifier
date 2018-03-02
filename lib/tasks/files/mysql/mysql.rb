require 'net/http'
require 'uri'

def open(url)
  Net::HTTP.get(URI.parse(url))
end

data = open('https://gist.githubusercontent.com/schesnowitz/52c2503a306a8a0e71f635e8efd5c3d3/raw/21304be483af494fa6bb91a4d9dab1df307f01a0/mysql_db.yml')

filename = 'config/database.yml'
the_file = File.new(filename, 'wb')
the_file.puts(data)
the_file.close  
