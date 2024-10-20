ARG RUBY_VERSION=3.1.2
FROM docker.io/library/ruby:$RUBY_VERSION-slim AS base

# Install base packages
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y curl libjemalloc2 libvips sqlite3 && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

# Install packages needed to build gems
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y build-essential git pkg-config && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

WORKDIR /usr/src/app

# Install application gems
COPY .gemrc Gemfile Gemfile.lock ./
RUN bundle install

# Start the server by default, this can be overwritten at runtime
EXPOSE 3000

CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]