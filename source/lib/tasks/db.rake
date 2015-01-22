namespace :db do
  desc "drop, create, migrate, and seed db's database"
  task yolo: [:environment,'db:drop', 'db:create', 'db:migrate', 'db:seed']
end
