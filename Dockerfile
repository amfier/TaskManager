FROM ruby:2.6

RUN mkdir -p /task_manager
WORKDIR /task_manager

COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs 3

COPY . /task_manager

EXPOSE 3000
CMD bundle exec rails s -b '0.0.0.0' -p 3000
