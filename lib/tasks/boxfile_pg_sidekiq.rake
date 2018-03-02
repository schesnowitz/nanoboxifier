desc 'Nanoboxifier - postgresql - puma - nginx - sidekiq'
  task :boxify_pg_sidekiq do
    

require "tasks/files/pg/boxfile_sidekiq"  
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
require "tasks/files/sidekiq"
puts 'config/initializers/sidekiq.rb created. |done|'
sleep 0.7
puts 'Application Boxified!'
sleep 0.7 
puts "Make sure to add the gems 'pg', 'sidekiq' and 'redis' to your gemfile."
sleep 0.5
puts "Type 'exit' and restart Nanobox by running the command 'nanobox run'."
end

