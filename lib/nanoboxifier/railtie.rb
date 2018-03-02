class Nanoboxifier::Railtie < Rails::Railtie
  rake_tasks do
    load 'tasks/boxfile_pg.rake'
    load 'tasks/boxfile_pg_sidekiq.rake' 
    load 'tasks/boxfile_sql.rake'
    load 'tasks/boxfile_sql_sidekiq.rake' 
  end 
end 