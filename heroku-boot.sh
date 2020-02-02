#!/bin/sh

/bin/sh -c "bundle exec yarn && bundle exec rails assets:precompile" &

bundle exec puma -C config/puma.rb
