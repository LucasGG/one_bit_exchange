FROM ruby:2.6.5

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | \
      tee /etc/apt/sources.list.d/yarn.list

RUN apt-get --quiet update \
    && apt-get --quiet --assume-yes --no-install-recommends install \
      nodejs \
      yarn \
      build-essential \
      libpq-dev \
      imagemagick \
      git \
      nano \
    && rm -rf /var/lib/apt/lists/*

ENV INSTALL_PATH /one_bit_exchange
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH

RUN bundle config set path '/gems'

COPY . .
