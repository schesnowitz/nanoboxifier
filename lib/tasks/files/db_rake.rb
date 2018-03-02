require 'net/http'
require 'uri'

def open(url)
  Net::HTTP.get(URI.parse(url))
end

data = open('https://gist.githubusercontent.com/schesnowitz/0a0a5434bc8e01eae908c7dcb5e59f27/raw/9e05751a1d211c771c645f5843c9a9d339fc0743/db.rake')

filename = 'lib/tasks/db.rake'
the_file = File.new(filename, 'wb')
the_file.puts(data)
the_file.close  



