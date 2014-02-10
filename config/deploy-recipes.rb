app_name = "#{application}-#{stage}"

namespace :deploy do
  # Setup
  desc 'Copies config files to ./shared/config'
  task :copy_app_configs, roles: :app do
    run "mkdir -p #{shared_path}/config"
    put File.read('config/database.yml.example'), "#{shared_path}/config/database.yml"
    put File.read('config/auth.txt'), "#{shared_path}/config/auth.txt"
  end

  # Deploy
  %w[start stop restart].each do |command|
    desc "#{command} unicorn server"
    task command, roles: :app, except: { no_release: true } do
      run "/etc/init.d/unicorn_#{app_name} #{command}"
    end
  end

  desc 'Symlink shared configs'
  task :symlink_config, :roles => :app do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
    run "ln -nfs #{shared_path}/config/auth.txt #{release_path}/config/auth.txt"

    run "sudo ln -nfs #{release_path}/bin/unicorn_init-#{stage}.sh /etc/init.d/unicorn_#{app_name}"
    run "sudo /usr/sbin/update-rc.d -f unicorn_#{app_name} defaults"

    run "sudo ln -nfs #{release_path}/config/deploy/configs/nginx/#{app_name}.conf /etc/nginx/sites-enabled/#{app_name}.conf"
    run 'sudo service nginx restart'
  end
end

# Setup
after 'deploy:setup', 'deploy:copy_app_configs'

# Deploy
before 'deploy:finalize_update', 'deploy:symlink_config'

after 'deploy:restart', 'deploy:cleanup'
