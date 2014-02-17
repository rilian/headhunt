Headhunt
--------

Deploy
======

check `config/database.yml.example`

check `config/deploy.rb`

check `config/auth.txt`

`cap deploy:setup`

`cap invoke COMMAND='cd /home/deployer/headhunt/dev/current && RAILS_ENV=production bundle exec rake db:create'`

`cap invoke COMMAND='cd /home/deployer/headhunt/dev/current && RAILS_ENV=production bundle exec rake db:migrate'`

`cap deploy`

Data
====

Dump `pg_dump -U postgres -d headhunt_production --inserts -f headhunt_production.sql --no-tablespaces --no-security-labels --data-only`