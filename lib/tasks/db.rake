namespace :db do
  task :next => :environment do
    Rake::Task["db:migrate"].invoke
    Rake::Task["db:test:prepare"].invoke
  end
end
