require 'net/http'
require 'uri'

def open(url)
  Net::HTTP.get(URI.parse(url))
end

data = open('https://gist.githubusercontent.com/schesnowitz/da5be4e64c200d082186777338d211c4/raw/c62eb0a1af2ce32130c0fdb669827d28688077fb/boxfile_pg_sidekiq.yml')

filename = 'boxfile.yml'
boxfile = File.new(filename, 'wb')
boxfile.puts(data)
boxfile.close 