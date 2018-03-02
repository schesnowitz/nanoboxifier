desc 'Nanoboxifier - mysql - puma - nginx'
  task :boxify_mysql do
    

require "tasks/files/mysql/boxfile"  
puts 'boxfile.yml created...'
sleep 0.7
require "tasks/files/mysql/mysql"   
puts 'config/database.yml created...'
sleep 0.7
require "tasks/files/db_rake"  
puts 'lib/tasks/db.rake created...'
sleep 0.7
require "tasks/files/puma"  
puts 'config/puma.rb created...'
sleep 0.7
require "tasks/files/nginx"   
puts 'config/nginx.conf created. |done|'
sleep 0.7 
puts 'Application Boxified!'
sleep 0.7 
puts "Make sure to add the gem 'mysql' to your gemfile."
sleep 0.5
puts "Type 'exit' and restart Nanobox by running the command 'nanobox run'."
end



