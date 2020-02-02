#!/bin/sh

bundle exec rails assets:precompile &

bundle exec puma -C config/puma.rb
