#!/bin/sh

bundle check || bundle install

bundle exec rails db:migrate

bundle exec rails server --binding=0.0.0.0
