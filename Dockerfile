FROM ruby:3.1.1
RUN mkdir /app
WORKDIR /app
ADD ./app /app
RUN gem install bundler
RUN bundle install