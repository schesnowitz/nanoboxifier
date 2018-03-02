require 'net/http'
require 'uri'

def open(url)
  Net::HTTP.get(URI.parse(url))
end

data = open('https://gist.githubusercontent.com/schesnowitz/e056a4c022174dab6ac23bd4b2c2548b/raw/94079ae8e91cb5913627f25cc6b4b668503e6e6e/postgresql_db.yml')

filename = 'config/database.yml'
the_file = File.new(filename, 'wb')
the_file.puts(data)
the_file.close  