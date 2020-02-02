#!/bin/sh

# Generate assets on deploy...
bundle exec rails assets:precompile &

bundle exec puma -C config/puma.rb
