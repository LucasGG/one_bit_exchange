FROM ruby:2.6.5

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | \
      tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update --quiet \
    && apt-get install --quiet --assume-yes --no-install-recommends \
      nodejs \
      yarn \
      build-essential \
      libpq-dev \
      imagemagick \
      git \
      nano \
    && rm -rf /var/lib/apt/lists/*

RUN gem install bundler -v '2.1.4'

RUN mkdir -p /one_bit_exchange
WORKDIR /one_bit_exchange

ENV BUNDLE_PATH /gems

COPY . .
