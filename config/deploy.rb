require 'bundler/capistrano'
require 'capistrano-rbenv'

set :rbenv_ruby_version, '2.0.0-p353'

set :application, 'headhunt'
set :stage, :dev
set :branch, 'master'
set :scm, :git
set :repository, 'git@github.com:rilian/headhunt.git'

#server_ip = '192.168.100.33' # vagrant
server_ip = '192.81.217.35' # digital ocean

role :web, server_ip
role :app, server_ip
role :db, server_ip, :primary => true

set :user, 'deployer'
set :deploy_to, "/home/#{user}/#{application}/#{stage}"
set :use_sudo, false

default_run_options[:pty] = true
set :ssh_options, { :forward_agent => true }

load File.join(File.dirname(__FILE__), 'deploy-recipes')