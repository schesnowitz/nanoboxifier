desc 'Nanoboxifier - postgresql - puma - nginx'
  task :boxify_pg do
    

require "tasks/files/pg/boxfile"  
puts 'boxfile.yml created...'
sleep 0.7
require "tasks/files/pg/postgres"   
puts 'config/database.yml created...'
sleep 0.7
require "tasks/files/db_rake"  
puts 'lib/tasks/db.rake created...'
sleep 0.7
require "tasks/files/puma"  
puts 'config/puma.rb created...'
sleep 0.7
require "tasks/files/nginx"   
puts 'config/nginx.conf created...'
sleep 0.7 
puts 'Application Boxified!'
sleep 0.7 
puts "Make sure to add the gem 'pg' to your gemfile."
sleep 0.5
puts "Type 'exit' and restart Nanobox by running the command 'nanobox run'."
end

